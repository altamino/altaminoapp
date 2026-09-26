package androidx.media3.datasource.cache;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.AtomicFile;
import androidx.media3.common.util.Util;
import androidx.media3.database.DatabaseIOException;
import androidx.media3.database.DatabaseProvider;
import androidx.media3.database.VersionTable;
import com.google.common.collect.d0;
import com.google.common.collect.l1;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes10.dex */
class CachedContentIndex {
    static final String FILE_NAME_ATOMIC = "cached_content_index.exi";
    private static final int INCREMENTAL_METADATA_READ_LENGTH = 10485760;
    private final SparseArray<String> idToKey;
    private final HashMap<String, CachedContent> keyToContent;
    private final SparseBooleanArray newIds;

    @Nullable
    private Storage previousStorage;
    private final SparseBooleanArray removedIds;
    private Storage storage;

    private static final class DatabaseStorage implements Storage {
        private static final String COLUMN_ID = "id";
        private static final int COLUMN_INDEX_ID = 0;
        private static final int COLUMN_INDEX_KEY = 1;
        private static final int COLUMN_INDEX_METADATA = 2;
        private static final String COLUMN_METADATA = "metadata";
        private static final String TABLE_PREFIX = "ExoPlayerCacheIndex";
        private static final String TABLE_SCHEMA = "(id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)";
        private static final int TABLE_VERSION = 1;
        private static final String WHERE_ID_EQUALS = "id = ?";
        private final DatabaseProvider databaseProvider;
        private String hexUid;
        private final SparseArray<CachedContent> pendingUpdates = new SparseArray<>();
        private String tableName;
        private static final String COLUMN_KEY = "key";
        private static final String[] COLUMNS = {"id", COLUMN_KEY, "metadata"};

        private void i(SQLiteDatabase sQLiteDatabase, CachedContent cachedContent) throws IOException {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            CachedContentIndex.t(cachedContent.d(), new DataOutputStream(byteArrayOutputStream));
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", Integer.valueOf(cachedContent.id));
            contentValues.put(COLUMN_KEY, cachedContent.key);
            contentValues.put("metadata", byteArray);
            sQLiteDatabase.replaceOrThrow((String) Assertions.e(this.tableName), null, contentValues);
        }

        private void k(SQLiteDatabase sQLiteDatabase, int i10) {
            sQLiteDatabase.delete((String) Assertions.e(this.tableName), WHERE_ID_EQUALS, new String[]{Integer.toString(i10)});
        }

        private static void l(SQLiteDatabase sQLiteDatabase, String str) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str);
        }

        private Cursor m() {
            return this.databaseProvider.getReadableDatabase().query((String) Assertions.e(this.tableName), COLUMNS, null, null, null, null, null);
        }

        private static String n(String str) {
            return TABLE_PREFIX + str;
        }

        private void o(SQLiteDatabase sQLiteDatabase) throws DatabaseIOException {
            VersionTable.d(sQLiteDatabase, 1, (String) Assertions.e(this.hexUid), 1);
            l(sQLiteDatabase, (String) Assertions.e(this.tableName));
            sQLiteDatabase.execSQL("CREATE TABLE " + this.tableName + " " + TABLE_SCHEMA);
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public void b(HashMap<String, CachedContent> map) throws IOException {
            try {
                SQLiteDatabase writableDatabase = this.databaseProvider.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    o(writableDatabase);
                    Iterator<CachedContent> it = map.values().iterator();
                    while (it.hasNext()) {
                        i(writableDatabase, it.next());
                    }
                    writableDatabase.setTransactionSuccessful();
                    this.pendingUpdates.clear();
                } finally {
                    writableDatabase.endTransaction();
                }
            } catch (SQLException e) {
                throw new DatabaseIOException(e);
            }
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public void c(CachedContent cachedContent) {
            this.pendingUpdates.put(cachedContent.id, cachedContent);
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public boolean d() throws DatabaseIOException {
            try {
                return VersionTable.b(this.databaseProvider.getReadableDatabase(), 1, (String) Assertions.e(this.hexUid)) != -1;
            } catch (SQLException e) {
                throw new DatabaseIOException(e);
            }
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public void e(HashMap<String, CachedContent> map) throws IOException {
            if (this.pendingUpdates.size() == 0) {
                return;
            }
            try {
                SQLiteDatabase writableDatabase = this.databaseProvider.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                for (int i10 = 0; i10 < this.pendingUpdates.size(); i10++) {
                    try {
                        CachedContent cachedContentValueAt = this.pendingUpdates.valueAt(i10);
                        if (cachedContentValueAt == null) {
                            k(writableDatabase, this.pendingUpdates.keyAt(i10));
                        } else {
                            i(writableDatabase, cachedContentValueAt);
                        }
                    } catch (Throwable th) {
                        writableDatabase.endTransaction();
                        throw th;
                    }
                }
                writableDatabase.setTransactionSuccessful();
                this.pendingUpdates.clear();
                writableDatabase.endTransaction();
            } catch (SQLException e) {
                throw new DatabaseIOException(e);
            }
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public void f(CachedContent cachedContent, boolean z6) {
            if (z6) {
                this.pendingUpdates.delete(cachedContent.id);
            } else {
                this.pendingUpdates.put(cachedContent.id, null);
            }
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public void g(HashMap<String, CachedContent> map, SparseArray<String> sparseArray) throws IOException {
            Assertions.g(this.pendingUpdates.size() == 0);
            try {
                if (VersionTable.b(this.databaseProvider.getReadableDatabase(), 1, (String) Assertions.e(this.hexUid)) != 1) {
                    SQLiteDatabase writableDatabase = this.databaseProvider.getWritableDatabase();
                    writableDatabase.beginTransactionNonExclusive();
                    try {
                        o(writableDatabase);
                        writableDatabase.setTransactionSuccessful();
                        writableDatabase.endTransaction();
                    } catch (Throwable th) {
                        writableDatabase.endTransaction();
                        throw th;
                    }
                }
                Cursor cursorM = m();
                while (cursorM.moveToNext()) {
                    try {
                        CachedContent cachedContent = new CachedContent(cursorM.getInt(0), (String) Assertions.e(cursorM.getString(1)), CachedContentIndex.q(new DataInputStream(new ByteArrayInputStream(cursorM.getBlob(2)))));
                        map.put(cachedContent.key, cachedContent);
                        sparseArray.put(cachedContent.id, cachedContent.key);
                    } catch (Throwable th2) {
                        if (cursorM != null) {
                            try {
                                cursorM.close();
                            } catch (Throwable th3) {
                                th2.addSuppressed(th3);
                            }
                        }
                        throw th2;
                    }
                }
                cursorM.close();
            } catch (SQLiteException e) {
                map.clear();
                sparseArray.clear();
                throw new DatabaseIOException(e);
            }
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public void h() throws DatabaseIOException {
            j(this.databaseProvider, (String) Assertions.e(this.hexUid));
        }

        public DatabaseStorage(DatabaseProvider databaseProvider) {
            this.databaseProvider = databaseProvider;
        }

        private static void j(DatabaseProvider databaseProvider, String str) throws DatabaseIOException {
            try {
                String strN = n(str);
                SQLiteDatabase writableDatabase = databaseProvider.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    VersionTable.c(writableDatabase, 1, str);
                    l(writableDatabase, strN);
                    writableDatabase.setTransactionSuccessful();
                } finally {
                    writableDatabase.endTransaction();
                }
            } catch (SQLException e) {
                throw new DatabaseIOException(e);
            }
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public void a(long j6) {
            String hexString = Long.toHexString(j6);
            this.hexUid = hexString;
            this.tableName = n(hexString);
        }
    }

    private static class LegacyStorage implements Storage {
        private static final int FLAG_ENCRYPTED_INDEX = 1;
        private static final int VERSION = 2;
        private static final int VERSION_METADATA_INTRODUCED = 2;
        private final AtomicFile atomicFile;

        @Nullable
        private ReusableBufferedOutputStream bufferedOutputStream;
        private boolean changed;

        @Nullable
        private final Cipher cipher;
        private final boolean encrypt;

        @Nullable
        private final SecureRandom random;

        @Nullable
        private final SecretKeySpec secretKeySpec;

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        private void m(HashMap<String, CachedContent> map) throws Throwable {
            DataOutputStream dataOutputStream = null;
            try {
                OutputStream outputStreamF = this.atomicFile.f();
                ReusableBufferedOutputStream reusableBufferedOutputStream = this.bufferedOutputStream;
                if (reusableBufferedOutputStream == null) {
                    this.bufferedOutputStream = new ReusableBufferedOutputStream(outputStreamF);
                } else {
                    reusableBufferedOutputStream.a(outputStreamF);
                }
                ReusableBufferedOutputStream reusableBufferedOutputStream2 = this.bufferedOutputStream;
                DataOutputStream dataOutputStream2 = new DataOutputStream(reusableBufferedOutputStream2);
                try {
                    dataOutputStream2.writeInt(2);
                    int i10 = 0;
                    dataOutputStream2.writeInt(this.encrypt ? 1 : 0);
                    if (this.encrypt) {
                        byte[] bArr = new byte[16];
                        ((SecureRandom) Util.j(this.random)).nextBytes(bArr);
                        dataOutputStream2.write(bArr);
                        try {
                            ((Cipher) Util.j(this.cipher)).init(1, (Key) Util.j(this.secretKeySpec), new IvParameterSpec(bArr));
                            dataOutputStream2.flush();
                            dataOutputStream2 = new DataOutputStream(new CipherOutputStream(reusableBufferedOutputStream2, this.cipher));
                        } catch (InvalidAlgorithmParameterException e) {
                            e = e;
                            throw new IllegalStateException(e);
                        } catch (InvalidKeyException e2) {
                            e = e2;
                            throw new IllegalStateException(e);
                        }
                    }
                    dataOutputStream2.writeInt(map.size());
                    for (CachedContent cachedContent : map.values()) {
                        l(cachedContent, dataOutputStream2);
                        i10 += i(cachedContent, 2);
                    }
                    dataOutputStream2.writeInt(i10);
                    this.atomicFile.b(dataOutputStream2);
                    Util.n(null);
                } catch (Throwable th) {
                    th = th;
                    dataOutputStream = dataOutputStream2;
                    Util.n(dataOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public void a(long j6) {
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public void c(CachedContent cachedContent) {
            this.changed = true;
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public void f(CachedContent cachedContent, boolean z6) {
            this.changed = true;
        }

        private int i(CachedContent cachedContent, int i10) {
            int i11;
            int iHashCode;
            int iHashCode2 = (cachedContent.id * 31) + cachedContent.key.hashCode();
            if (i10 < 2) {
                long jA = c.a(cachedContent.d());
                i11 = iHashCode2 * 31;
                iHashCode = (int) (jA ^ (jA >>> 32));
            } else {
                i11 = iHashCode2 * 31;
                iHashCode = cachedContent.d().hashCode();
            }
            return i11 + iHashCode;
        }

        private boolean k(HashMap<String, CachedContent> map, SparseArray<String> sparseArray) throws Throwable {
            if (!this.atomicFile.c()) {
                return true;
            }
            DataInputStream dataInputStream = null;
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(this.atomicFile.d());
                DataInputStream dataInputStream2 = new DataInputStream(bufferedInputStream);
                try {
                    int i10 = dataInputStream2.readInt();
                    if (i10 >= 0 && i10 <= 2) {
                        if ((dataInputStream2.readInt() & 1) != 0) {
                            if (this.cipher == null) {
                                Util.n(dataInputStream2);
                                return false;
                            }
                            byte[] bArr = new byte[16];
                            dataInputStream2.readFully(bArr);
                            try {
                                this.cipher.init(2, (Key) Util.j(this.secretKeySpec), new IvParameterSpec(bArr));
                                dataInputStream2 = new DataInputStream(new CipherInputStream(bufferedInputStream, this.cipher));
                            } catch (InvalidAlgorithmParameterException e) {
                                e = e;
                                throw new IllegalStateException(e);
                            } catch (InvalidKeyException e2) {
                                e = e2;
                                throw new IllegalStateException(e);
                            }
                        } else if (this.encrypt) {
                            this.changed = true;
                        }
                        int i11 = dataInputStream2.readInt();
                        int i12 = 0;
                        for (int i13 = 0; i13 < i11; i13++) {
                            CachedContent cachedContentJ = j(i10, dataInputStream2);
                            map.put(cachedContentJ.key, cachedContentJ);
                            sparseArray.put(cachedContentJ.id, cachedContentJ.key);
                            i12 += i(cachedContentJ, i10);
                        }
                        int i14 = dataInputStream2.readInt();
                        boolean z6 = dataInputStream2.read() == -1;
                        if (i14 == i12 && z6) {
                            Util.n(dataInputStream2);
                            return true;
                        }
                        Util.n(dataInputStream2);
                        return false;
                    }
                    Util.n(dataInputStream2);
                    return false;
                } catch (IOException unused) {
                    dataInputStream = dataInputStream2;
                    if (dataInputStream != null) {
                        Util.n(dataInputStream);
                    }
                    return false;
                } catch (Throwable th) {
                    th = th;
                    dataInputStream = dataInputStream2;
                    if (dataInputStream != null) {
                        Util.n(dataInputStream);
                    }
                    throw th;
                }
            } catch (IOException unused2) {
            } catch (Throwable th2) {
                th = th2;
            }
        }

        private void l(CachedContent cachedContent, DataOutputStream dataOutputStream) throws IOException {
            dataOutputStream.writeInt(cachedContent.id);
            dataOutputStream.writeUTF(cachedContent.key);
            CachedContentIndex.t(cachedContent.d(), dataOutputStream);
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public boolean d() {
            return this.atomicFile.c();
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public void e(HashMap<String, CachedContent> map) throws Throwable {
            if (this.changed) {
                b(map);
            }
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public void g(HashMap<String, CachedContent> map, SparseArray<String> sparseArray) {
            Assertions.g(!this.changed);
            if (k(map, sparseArray)) {
                return;
            }
            map.clear();
            sparseArray.clear();
            this.atomicFile.a();
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public void h() {
            this.atomicFile.a();
        }

        public LegacyStorage(File file, @Nullable byte[] bArr, boolean z6) {
            boolean z10;
            Cipher cipherI;
            SecretKeySpec secretKeySpec;
            if (bArr == null && z6) {
                z10 = false;
            } else {
                z10 = true;
            }
            Assertions.g(z10);
            if (bArr != null) {
                Assertions.a(bArr.length == 16);
                try {
                    cipherI = CachedContentIndex.i();
                    secretKeySpec = new SecretKeySpec(bArr, "AES");
                } catch (NoSuchAlgorithmException | NoSuchPaddingException e) {
                    throw new IllegalStateException(e);
                }
            } else {
                Assertions.a(!z6);
                cipherI = null;
                secretKeySpec = null;
            }
            this.encrypt = z6;
            this.cipher = cipherI;
            this.secretKeySpec = secretKeySpec;
            this.random = z6 ? new SecureRandom() : null;
            this.atomicFile = new AtomicFile(file);
        }

        private CachedContent j(int i10, DataInputStream dataInputStream) throws IOException {
            DefaultContentMetadata defaultContentMetadataQ;
            int i11 = dataInputStream.readInt();
            String utf = dataInputStream.readUTF();
            if (i10 >= 2) {
                defaultContentMetadataQ = CachedContentIndex.q(dataInputStream);
            } else {
                long j6 = dataInputStream.readLong();
                ContentMetadataMutations contentMetadataMutations = new ContentMetadataMutations();
                ContentMetadataMutations.g(contentMetadataMutations, j6);
                defaultContentMetadataQ = DefaultContentMetadata.EMPTY.c(contentMetadataMutations);
            }
            return new CachedContent(i11, utf, defaultContentMetadataQ);
        }

        @Override // androidx.media3.datasource.cache.CachedContentIndex.Storage
        public void b(HashMap<String, CachedContent> map) throws Throwable {
            m(map);
            this.changed = false;
        }
    }

    private interface Storage {
        void a(long j6);

        void b(HashMap<String, CachedContent> map) throws IOException;

        void c(CachedContent cachedContent);

        boolean d() throws IOException;

        void e(HashMap<String, CachedContent> map) throws IOException;

        void f(CachedContent cachedContent, boolean z6);

        void g(HashMap<String, CachedContent> map, SparseArray<String> sparseArray) throws IOException;

        void h() throws IOException;
    }

    public CachedContentIndex(DatabaseProvider databaseProvider) {
        this(databaseProvider, null, null, false, false);
    }

    public CachedContentIndex(@Nullable DatabaseProvider databaseProvider, @Nullable File file, @Nullable byte[] bArr, boolean z6, boolean z10) {
        Assertions.g((databaseProvider == null && file == null) ? false : true);
        this.keyToContent = new HashMap<>();
        this.idToKey = new SparseArray<>();
        this.removedIds = new SparseBooleanArray();
        this.newIds = new SparseBooleanArray();
        DatabaseStorage databaseStorage = databaseProvider != null ? new DatabaseStorage(databaseProvider) : null;
        LegacyStorage legacyStorage = file != null ? new LegacyStorage(new File(file, FILE_NAME_ATOMIC), bArr, z6) : null;
        if (databaseStorage == null || (legacyStorage != null && z10)) {
            this.storage = (Storage) Util.j(legacyStorage);
            this.previousStorage = databaseStorage;
        } else {
            this.storage = databaseStorage;
            this.previousStorage = legacyStorage;
        }
    }

    private CachedContent d(String str) {
        int iL = l(this.idToKey);
        CachedContent cachedContent = new CachedContent(iL, str);
        this.keyToContent.put(str, cachedContent);
        this.idToKey.put(iL, str);
        this.newIds.put(iL, true);
        this.storage.c(cachedContent);
        return cachedContent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"GetInstance"})
    public static Cipher i() throws NoSuchPaddingException, NoSuchAlgorithmException {
        if (Util.SDK_INT == 18) {
            try {
                return Cipher.getInstance("AES/CBC/PKCS5PADDING", org.bouncycastle.jce.provider.a.PROVIDER_NAME);
            } catch (Throwable unused) {
            }
        }
        return Cipher.getInstance("AES/CBC/PKCS5PADDING");
    }

    public static boolean o(String str) {
        return str.startsWith(FILE_NAME_ATOMIC);
    }

    @Nullable
    public CachedContent g(String str) {
        return this.keyToContent.get(str);
    }

    public Collection<CachedContent> h() {
        return Collections.unmodifiableCollection(this.keyToContent.values());
    }

    @Nullable
    public String k(int i10) {
        return this.idToKey.get(i10);
    }

    public CachedContent m(String str) {
        CachedContent cachedContent = this.keyToContent.get(str);
        return cachedContent == null ? d(str) : cachedContent;
    }

    @WorkerThread
    public void n(long j6) throws IOException {
        Storage storage;
        this.storage.a(j6);
        Storage storage2 = this.previousStorage;
        if (storage2 != null) {
            storage2.a(j6);
        }
        if (this.storage.d() || (storage = this.previousStorage) == null || !storage.d()) {
            this.storage.g(this.keyToContent, this.idToKey);
        } else {
            this.previousStorage.g(this.keyToContent, this.idToKey);
            this.storage.b(this.keyToContent);
        }
        Storage storage3 = this.previousStorage;
        if (storage3 != null) {
            storage3.h();
            this.previousStorage = null;
        }
    }

    public void p(String str) {
        CachedContent cachedContent = this.keyToContent.get(str);
        if (cachedContent != null && cachedContent.g() && cachedContent.i()) {
            this.keyToContent.remove(str);
            int i10 = cachedContent.id;
            boolean z6 = this.newIds.get(i10);
            this.storage.f(cachedContent, z6);
            if (z6) {
                this.idToKey.remove(i10);
                this.newIds.delete(i10);
            } else {
                this.idToKey.put(i10, null);
                this.removedIds.put(i10, true);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void r() {
        l1 it = d0.t(this.keyToContent.keySet()).iterator();
        while (it.hasNext()) {
            p((String) it.next());
        }
    }

    @WorkerThread
    public void s() throws IOException {
        this.storage.e(this.keyToContent);
        int size = this.removedIds.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.idToKey.remove(this.removedIds.keyAt(i10));
        }
        this.removedIds.clear();
        this.newIds.clear();
    }

    @VisibleForTesting
    static int l(SparseArray<String> sparseArray) {
        int iKeyAt;
        int size = sparseArray.size();
        int i10 = 0;
        if (size == 0) {
            iKeyAt = 0;
        } else {
            iKeyAt = sparseArray.keyAt(size - 1) + 1;
        }
        if (iKeyAt < 0) {
            while (i10 < size && i10 == sparseArray.keyAt(i10)) {
                i10++;
            }
            return i10;
        }
        return iKeyAt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static DefaultContentMetadata q(DataInputStream dataInputStream) throws IOException {
        int i10 = dataInputStream.readInt();
        HashMap map = new HashMap();
        for (int i11 = 0; i11 < i10; i11++) {
            String utf = dataInputStream.readUTF();
            int i12 = dataInputStream.readInt();
            if (i12 >= 0) {
                int iMin = Math.min(i12, INCREMENTAL_METADATA_READ_LENGTH);
                byte[] bArrCopyOf = Util.EMPTY_BYTE_ARRAY;
                int i13 = 0;
                while (i13 != i12) {
                    int i14 = i13 + iMin;
                    bArrCopyOf = Arrays.copyOf(bArrCopyOf, i14);
                    dataInputStream.readFully(bArrCopyOf, i13, iMin);
                    iMin = Math.min(i12 - i14, INCREMENTAL_METADATA_READ_LENGTH);
                    i13 = i14;
                }
                map.put(utf, bArrCopyOf);
            } else {
                throw new IOException("Invalid value size: " + i12);
            }
        }
        return new DefaultContentMetadata(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void t(DefaultContentMetadata defaultContentMetadata, DataOutputStream dataOutputStream) throws IOException {
        Set<Map.Entry<String, byte[]>> setD = defaultContentMetadata.d();
        dataOutputStream.writeInt(setD.size());
        for (Map.Entry<String, byte[]> entry : setD) {
            dataOutputStream.writeUTF(entry.getKey());
            byte[] value = entry.getValue();
            dataOutputStream.writeInt(value.length);
            dataOutputStream.write(value);
        }
    }

    public void e(String str, ContentMetadataMutations contentMetadataMutations) {
        CachedContent cachedContentM = m(str);
        if (cachedContentM.b(contentMetadataMutations)) {
            this.storage.c(cachedContentM);
        }
    }

    public int f(String str) {
        return m(str).id;
    }

    public ContentMetadata j(String str) {
        CachedContent cachedContentG = g(str);
        if (cachedContentG != null) {
            return cachedContentG.d();
        }
        return DefaultContentMetadata.EMPTY;
    }
}

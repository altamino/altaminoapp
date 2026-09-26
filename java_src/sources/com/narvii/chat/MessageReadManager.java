package com.narvii.chat;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.model.ChatMessage;
import com.narvii.model.User;
import com.narvii.util.Log;
import com.narvii.util.SafeFileOutputStream;
import com.narvii.util.Utils;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: loaded from: classes8.dex */
public class MessageReadManager implements Runnable {
    private static final String DIR_NAME = "message_read";
    public static final long EXPIRE_DURATION = 259200000;
    public static final int MAX_ID_LIST_SIZE = 1000;
    private AccountService account;
    private ConfigService config;
    private int dirty;
    private File file;
    private LinkedHashSet<UUID> hashSet;
    private LocalBroadcastManager localBroadcastManager;
    NVContext nvContext;
    private UUID prevInsert;
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.chat.MessageReadManager.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction())) {
                MessageReadManager messageReadManager = MessageReadManager.this;
                messageReadManager.resetSP(messageReadManager.account.getUserId(), MessageReadManager.this.config.getCommunityId());
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public void resetSP(String str, int i10) {
        this.file = str == null ? null : getFile(str, i10);
        this.hashSet = null;
        this.prevInsert = null;
    }

    public static void cleanCache(final Context context) {
        new Thread("clean_message_read") { // from class: com.narvii.chat.MessageReadManager.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    File file = new File(context.getFilesDir(), MessageReadManager.DIR_NAME);
                    if (file.isDirectory()) {
                        long jCurrentTimeMillis = System.currentTimeMillis() - MessageReadManager.EXPIRE_DURATION;
                        for (File file2 : file.listFiles()) {
                            if (file2.lastModified() < jCurrentTimeMillis) {
                                file2.delete();
                            }
                        }
                    }
                } catch (Exception unused) {
                }
            }
        }.start();
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0078 A[Catch: Exception -> 0x007b, PHI: r2 r8
      0x0078: PHI (r2v9 ??) = (r2v8 ??), (r2v10 ??) binds: [B:35:0x0076, B:45:0x008d] A[DONT_GENERATE, DONT_INLINE]
      0x0078: PHI (r8v5 java.util.UUID) = (r8v4 java.util.UUID), (r8v6 java.util.UUID) binds: [B:35:0x0076, B:45:0x008d] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #7 {Exception -> 0x007b, blocks: (B:34:0x0073, B:36:0x0078, B:44:0x008a), top: B:53:0x0019 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x0084 A[Catch: Exception -> 0x0087, TRY_LEAVE, TryCatch #10 {Exception -> 0x0087, blocks: (B:39:0x007f, B:41:0x0084), top: B:55:0x007f }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 3, insn: 0x003a: MOVE (r1 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]) (LINE:59), block:B:15:0x003a */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11, types: [java.io.FileInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v2, types: [int] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.io.FileInputStream] */
    private LinkedHashSet<UUID> get() throws Throwable {
        ObjectInputStream objectInputStream;
        UUID uuid;
        ObjectInputStream objectInputStream2;
        Exception e;
        UUID uuid2 = null;
        UUID uuid3 = null;
        objectInputStream = null;
        objectInputStream = null;
        ObjectInputStream objectInputStream3 = null;
        ObjectInputStream objectInputStream4 = null;
        if (this.file == null) {
            return null;
        }
        if (this.hashSet == null) {
            LinkedHashSet<UUID> linkedHashSet = new LinkedHashSet<>();
            ?? fileInputStream = (this.file.length() > 0L ? 1 : (this.file.length() == 0L ? 0 : -1));
            try {
                try {
                    if (fileInputStream > 0) {
                        try {
                            fileInputStream = new FileInputStream(this.file);
                            try {
                                objectInputStream2 = new ObjectInputStream(fileInputStream);
                                while (true) {
                                    try {
                                        uuid = new UUID(objectInputStream2.readLong(), objectInputStream2.readLong());
                                        try {
                                            linkedHashSet.add(uuid);
                                            uuid3 = uuid;
                                        } catch (EOFException unused) {
                                            objectInputStream3 = objectInputStream2;
                                            fileInputStream = fileInputStream;
                                            if (objectInputStream3 != null) {
                                                objectInputStream3.close();
                                            }
                                            if (fileInputStream != 0) {
                                                fileInputStream.close();
                                            }
                                            uuid2 = uuid;
                                            this.hashSet = linkedHashSet;
                                            this.prevInsert = uuid2;
                                            return this.hashSet;
                                        } catch (Exception e2) {
                                            e = e2;
                                            Log.w("fail to read " + this.file, e);
                                            if (objectInputStream2 != null) {
                                                objectInputStream2.close();
                                            }
                                            if (fileInputStream != 0) {
                                                fileInputStream.close();
                                            }
                                            uuid2 = uuid;
                                            this.hashSet = linkedHashSet;
                                            this.prevInsert = uuid2;
                                            return this.hashSet;
                                        }
                                    } catch (EOFException unused2) {
                                        uuid = uuid3;
                                    } catch (Exception e6) {
                                        uuid = uuid3;
                                        e = e6;
                                    }
                                }
                            } catch (EOFException unused3) {
                                uuid = null;
                                fileInputStream = fileInputStream;
                            } catch (Exception e7) {
                                uuid = null;
                                e = e7;
                                objectInputStream2 = null;
                            } catch (Throwable th) {
                                th = th;
                                if (objectInputStream4 != null) {
                                    try {
                                        objectInputStream4.close();
                                        if (fileInputStream != 0) {
                                            fileInputStream.close();
                                        }
                                    } catch (Exception unused4) {
                                        throw th;
                                    }
                                } else if (fileInputStream != 0) {
                                    fileInputStream.close();
                                }
                                throw th;
                            }
                        } catch (EOFException unused5) {
                            fileInputStream = 0;
                            uuid = null;
                        } catch (Exception e10) {
                            objectInputStream2 = null;
                            uuid = null;
                            e = e10;
                            fileInputStream = 0;
                        } catch (Throwable th2) {
                            th = th2;
                            fileInputStream = 0;
                        }
                    }
                } catch (Exception unused6) {
                }
                this.hashSet = linkedHashSet;
                this.prevInsert = uuid2;
            } catch (Throwable th3) {
                th = th3;
                objectInputStream4 = objectInputStream;
            }
        }
        return this.hashSet;
    }

    private File getFile(String str, int i10) {
        File file = new File(this.nvContext.getContext().getFilesDir(), DIR_NAME);
        file.mkdir();
        return new File(file, str + "_" + i10);
    }

    private void save(Set<UUID> set) {
        if (this.file == null) {
            return;
        }
        this.dirty++;
        Handler handler = Utils.handler;
        handler.removeCallbacks(this);
        handler.postDelayed(this, 15000L);
    }

    private static void writeInBackground(final File file, Collection<UUID> collection) {
        final ArrayList arrayList = new ArrayList(collection);
        new Thread("flush_message_read") { // from class: com.narvii.chat.MessageReadManager.3
            /* JADX WARN: Code duplicated, block: B:32:0x0062 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() throws Throwable {
                SafeFileOutputStream safeFileOutputStream;
                Throwable th;
                Exception e;
                try {
                    try {
                        safeFileOutputStream = new SafeFileOutputStream(file);
                        try {
                            try {
                                ObjectOutputStream objectOutputStream = new ObjectOutputStream(safeFileOutputStream);
                                for (UUID uuid : arrayList) {
                                    objectOutputStream.writeLong(uuid.getMostSignificantBits());
                                    objectOutputStream.writeLong(uuid.getLeastSignificantBits());
                                }
                                objectOutputStream.close();
                                safeFileOutputStream.close(true);
                            } catch (Exception e2) {
                                e = e2;
                                Log.w("fail to write " + file, e);
                                if (safeFileOutputStream != null) {
                                    safeFileOutputStream.close(false);
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (safeFileOutputStream != null) {
                                try {
                                    safeFileOutputStream.close(false);
                                } catch (Exception unused) {
                                }
                            }
                            throw th;
                        }
                    } catch (Exception unused2) {
                    }
                } catch (Exception e6) {
                    safeFileOutputStream = null;
                    e = e6;
                } catch (Throwable th3) {
                    safeFileOutputStream = null;
                    th = th3;
                    if (safeFileOutputStream != null) {
                        safeFileOutputStream.close(false);
                    }
                    throw th;
                }
            }
        }.start();
    }

    public void flush() {
        LinkedHashSet<UUID> linkedHashSet;
        if (this.dirty > 0) {
            File file = this.file;
            if (file != null && (linkedHashSet = this.hashSet) != null) {
                writeInBackground(file, linkedHashSet);
            }
            this.dirty = 0;
        }
    }

    public boolean isMessageRead(ChatMessage chatMessage) {
        LinkedHashSet<UUID> linkedHashSet;
        if (chatMessage.createdTime == null || chatMessage.id() == null || chatMessage.author == null) {
            return true;
        }
        try {
            UUID uuidFromString = UUID.fromString(chatMessage.messageId);
            String userId = ((AccountService) this.nvContext.getService("account")).getUserId();
            if (userId == null) {
                return true;
            }
            User user = chatMessage.author;
            if ((user == null || !Utils.isEqualsNotNull(userId, user.uid)) && System.currentTimeMillis() - chatMessage.createdTime.getTime() <= EXPIRE_DURATION && (linkedHashSet = get()) != null) {
                return linkedHashSet.contains(uuidFromString);
            }
            return true;
        } catch (Exception unused) {
            return true;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        LinkedHashSet<UUID> linkedHashSet;
        File file = this.file;
        if (file == null || (linkedHashSet = this.hashSet) == null || this.dirty == 0) {
            return;
        }
        writeInBackground(file, linkedHashSet);
        this.dirty = 0;
    }

    public void setMessageRead(ChatMessage chatMessage) throws Throwable {
        String str = chatMessage.messageId;
        if (str == null) {
            return;
        }
        try {
            UUID uuidFromString = UUID.fromString(str);
            LinkedHashSet<UUID> linkedHashSet = get();
            if (linkedHashSet == null || uuidFromString.equals(this.prevInsert)) {
                return;
            }
            linkedHashSet.remove(uuidFromString);
            linkedHashSet.add(uuidFromString);
            int size = linkedHashSet.size() - 1000;
            if (size > 0) {
                Iterator<UUID> it = this.hashSet.iterator();
                for (int i10 = 0; i10 < size && it.hasNext(); i10++) {
                    it.next();
                    it.remove();
                }
            }
            save(linkedHashSet);
        } catch (Exception unused) {
        }
    }

    public void start() {
        resetSP(this.account.getUserId(), this.config.getCommunityId());
        this.localBroadcastManager.c(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
    }

    public MessageReadManager(NVContext nVContext) {
        this.nvContext = nVContext;
        this.account = (AccountService) nVContext.getService("account");
        this.config = (ConfigService) nVContext.getService("config");
        this.localBroadcastManager = LocalBroadcastManager.b(nVContext.getContext());
    }

    public void stop() {
        flush();
        resetSP(null, 0);
        this.localBroadcastManager.f(this.receiver);
    }
}

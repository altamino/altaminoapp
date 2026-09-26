package com.fasterxml.jackson.core.sym;

import androidx.compose.animation.core.d;
import androidx.core.view.InputDeviceCompat;
import com.fasterxml.jackson.core.util.ArraysCompat;
import com.fasterxml.jackson.core.util.InternCache;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class BytesToNameCanonicalizer {
    protected static final int DEFAULT_TABLE_SIZE = 64;
    static final int INITIAL_COLLISION_LEN = 32;
    static final int LAST_VALID_BUCKET = 254;
    static final int MAX_COLL_CHAIN_FOR_REUSE = 63;
    static final int MAX_COLL_CHAIN_LENGTH = 255;
    static final int MAX_ENTRIES_FOR_REUSE = 6000;
    protected static final int MAX_TABLE_SIZE = 65536;
    static final int MIN_HASH_SIZE = 16;
    private static final int MULT = 33;
    private static final int MULT2 = 65599;
    private static final int MULT3 = 31;
    protected int _collCount;
    protected int _collEnd;
    protected Bucket[] _collList;
    private boolean _collListShared;
    protected int _count;
    private final int _hashSeed;
    protected final boolean _intern;
    protected int _longestCollisionList;
    protected int[] _mainHash;
    protected int _mainHashMask;
    private boolean _mainHashShared;
    protected Name[] _mainNames;
    private boolean _mainNamesShared;
    private transient boolean _needRehash;
    protected final BytesToNameCanonicalizer _parent;
    protected final AtomicReference<TableInfo> _tableInfo;

    private static final class TableInfo {
        public final int collCount;
        public final int collEnd;
        public final Bucket[] collList;
        public final int count;
        public final int longestCollisionList;
        public final int[] mainHash;
        public final int mainHashMask;
        public final Name[] mainNames;

        public TableInfo(int i10, int i11, int[] iArr, Name[] nameArr, Bucket[] bucketArr, int i12, int i13, int i14) {
            this.count = i10;
            this.mainHashMask = i11;
            this.mainHash = iArr;
            this.mainNames = nameArr;
            this.collList = bucketArr;
            this.collCount = i12;
            this.collEnd = i13;
            this.longestCollisionList = i14;
        }

        public TableInfo(BytesToNameCanonicalizer bytesToNameCanonicalizer) {
            this.count = bytesToNameCanonicalizer._count;
            this.mainHashMask = bytesToNameCanonicalizer._mainHashMask;
            this.mainHash = bytesToNameCanonicalizer._mainHash;
            this.mainNames = bytesToNameCanonicalizer._mainNames;
            this.collList = bytesToNameCanonicalizer._collList;
            this.collCount = bytesToNameCanonicalizer._collCount;
            this.collEnd = bytesToNameCanonicalizer._collEnd;
            this.longestCollisionList = bytesToNameCanonicalizer._longestCollisionList;
        }
    }

    private BytesToNameCanonicalizer(int i10, boolean z6, int i11) {
        this._parent = null;
        this._hashSeed = i11;
        this._intern = z6;
        int i12 = 16;
        if (i10 < 16) {
            i10 = i12;
        } else if (((i10 - 1) & i10) != 0) {
            while (i12 < i10) {
                i12 += i12;
            }
            i10 = i12;
        }
        this._tableInfo = new AtomicReference<>(initTableInfo(i10));
    }

    protected static int[] calcQuads(byte[] bArr) {
        int length = bArr.length;
        int[] iArr = new int[(length + 3) / 4];
        int i10 = 0;
        while (i10 < length) {
            int i11 = bArr[i10] & 255;
            int i12 = i10 + 1;
            if (i12 < length) {
                i11 = (i11 << 8) | (bArr[i12] & 255);
                i12 = i10 + 2;
                if (i12 < length) {
                    i11 = (i11 << 8) | (bArr[i12] & 255);
                    i12 = i10 + 3;
                    if (i12 < length) {
                        i11 = (bArr[i12] & 255) | (i11 << 8);
                    }
                }
            }
            iArr[i12 >> 2] = i11;
            i10 = i12 + 1;
        }
        return iArr;
    }

    private static Name constructName(int i10, String str, int i11, int i12) {
        return i12 == 0 ? new Name1(str, i10, i11) : new Name2(str, i10, i11, i12);
    }

    public static BytesToNameCanonicalizer createRoot() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        return createRoot((((int) jCurrentTimeMillis) + ((int) (jCurrentTimeMillis >>> 32))) | 1);
    }

    private void nukeSymbols() {
        this._count = 0;
        this._longestCollisionList = 0;
        Arrays.fill(this._mainHash, 0);
        Arrays.fill(this._mainNames, (Object) null);
        Arrays.fill(this._collList, (Object) null);
        this._collCount = 0;
        this._collEnd = 0;
    }

    private void rehash() {
        int iFindBestBucket;
        this._needRehash = false;
        this._mainNamesShared = false;
        int length = this._mainHash.length;
        int i10 = length + length;
        if (i10 > 65536) {
            nukeSymbols();
            return;
        }
        this._mainHash = new int[i10];
        this._mainHashMask = i10 - 1;
        Name[] nameArr = this._mainNames;
        this._mainNames = new Name[i10];
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            Name name = nameArr[i12];
            if (name != null) {
                i11++;
                int iHashCode = name.hashCode();
                int i13 = this._mainHashMask & iHashCode;
                this._mainNames[i13] = name;
                this._mainHash[i13] = iHashCode << 8;
            }
        }
        int i14 = this._collEnd;
        if (i14 == 0) {
            this._longestCollisionList = 0;
            return;
        }
        this._collCount = 0;
        this._collEnd = 0;
        this._collListShared = false;
        Bucket[] bucketArr = this._collList;
        this._collList = new Bucket[bucketArr.length];
        int iMax = 0;
        for (int i15 = 0; i15 < i14; i15++) {
            for (Bucket bucket = bucketArr[i15]; bucket != null; bucket = bucket._next) {
                i11++;
                Name name2 = bucket._name;
                int iHashCode2 = name2.hashCode();
                int i16 = this._mainHashMask & iHashCode2;
                int[] iArr = this._mainHash;
                int i17 = iArr[i16];
                Name[] nameArr2 = this._mainNames;
                if (nameArr2[i16] == null) {
                    iArr[i16] = iHashCode2 << 8;
                    nameArr2[i16] = name2;
                } else {
                    this._collCount++;
                    int i18 = i17 & 255;
                    if (i18 == 0) {
                        iFindBestBucket = this._collEnd;
                        if (iFindBestBucket <= 254) {
                            this._collEnd = iFindBestBucket + 1;
                            if (iFindBestBucket >= this._collList.length) {
                                expandCollision();
                            }
                        } else {
                            iFindBestBucket = findBestBucket();
                        }
                        this._mainHash[i16] = (i17 & InputDeviceCompat.SOURCE_ANY) | (iFindBestBucket + 1);
                    } else {
                        iFindBestBucket = i18 - 1;
                    }
                    Bucket bucket2 = new Bucket(name2, this._collList[iFindBestBucket]);
                    this._collList[iFindBestBucket] = bucket2;
                    iMax = Math.max(iMax, bucket2.length());
                }
            }
        }
        this._longestCollisionList = iMax;
        if (i11 == this._count) {
            return;
        }
        throw new RuntimeException("Internal error: count after rehash " + i11 + "; should be " + this._count);
    }

    public Name addName(String str, int i10, int i11) {
        if (this._intern) {
            str = InternCache.instance.intern(str);
        }
        int iCalcHash = i11 == 0 ? calcHash(i10) : calcHash(i10, i11);
        Name nameConstructName = constructName(iCalcHash, str, i10, i11);
        _addSymbol(iCalcHash, nameConstructName);
        return nameConstructName;
    }

    public int calcHash(int i10) {
        int i11 = i10 ^ this._hashSeed;
        int i12 = i11 + (i11 >>> 15);
        return i12 ^ (i12 >>> 9);
    }

    public int collisionCount() {
        return this._collCount;
    }

    public Name findName(int i10) {
        int iCalcHash = calcHash(i10);
        int i11 = this._mainHashMask & iCalcHash;
        int i12 = this._mainHash[i11];
        if ((((i12 >> 8) ^ iCalcHash) << 8) == 0) {
            Name name = this._mainNames[i11];
            if (name == null) {
                return null;
            }
            if (name.equals(i10)) {
                return name;
            }
        } else if (i12 == 0) {
            return null;
        }
        int i13 = i12 & 255;
        if (i13 > 0) {
            Bucket bucket = this._collList[i13 - 1];
            if (bucket != null) {
                return bucket.find(iCalcHash, i10, 0);
            }
        }
        return null;
    }

    public int hashSeed() {
        return this._hashSeed;
    }

    public int maxCollisionLength() {
        return this._longestCollisionList;
    }

    public boolean maybeDirty() {
        return !this._mainHashShared;
    }

    static final class Bucket {
        private final int _length;
        protected final Name _name;
        protected final Bucket _next;

        public Name find(int i10, int i11, int i12) {
            if (this._name.hashCode() == i10 && this._name.equals(i11, i12)) {
                return this._name;
            }
            for (Bucket bucket = this._next; bucket != null; bucket = bucket._next) {
                Name name = bucket._name;
                if (name.hashCode() == i10 && name.equals(i11, i12)) {
                    return name;
                }
            }
            return null;
        }

        public int length() {
            return this._length;
        }

        Bucket(Name name, Bucket bucket) {
            this._name = name;
            this._next = bucket;
            this._length = bucket != null ? 1 + bucket._length : 1;
        }

        public Name find(int i10, int[] iArr, int i11) {
            if (this._name.hashCode() == i10 && this._name.equals(iArr, i11)) {
                return this._name;
            }
            for (Bucket bucket = this._next; bucket != null; bucket = bucket._next) {
                Name name = bucket._name;
                if (name.hashCode() == i10 && name.equals(iArr, i11)) {
                    return name;
                }
            }
            return null;
        }
    }

    private void _addSymbol(int i10, Name name) {
        int iFindBestBucket;
        if (this._mainHashShared) {
            unshareMain();
        }
        if (this._needRehash) {
            rehash();
        }
        this._count++;
        int i11 = this._mainHashMask & i10;
        if (this._mainNames[i11] == null) {
            this._mainHash[i11] = i10 << 8;
            if (this._mainNamesShared) {
                unshareNames();
            }
            this._mainNames[i11] = name;
        } else {
            if (this._collListShared) {
                unshareCollision();
            }
            this._collCount++;
            int i12 = this._mainHash[i11];
            int i13 = i12 & 255;
            if (i13 == 0) {
                iFindBestBucket = this._collEnd;
                if (iFindBestBucket <= 254) {
                    this._collEnd = iFindBestBucket + 1;
                    if (iFindBestBucket >= this._collList.length) {
                        expandCollision();
                    }
                } else {
                    iFindBestBucket = findBestBucket();
                }
                this._mainHash[i11] = (i12 & InputDeviceCompat.SOURCE_ANY) | (iFindBestBucket + 1);
            } else {
                iFindBestBucket = i13 - 1;
            }
            Bucket bucket = new Bucket(name, this._collList[iFindBestBucket]);
            this._collList[iFindBestBucket] = bucket;
            int iMax = Math.max(bucket.length(), this._longestCollisionList);
            this._longestCollisionList = iMax;
            if (iMax > 255) {
                reportTooManyCollisions(255);
            }
        }
        int length = this._mainHash.length;
        int i14 = this._count;
        if (i14 > (length >> 1)) {
            int i15 = length >> 2;
            if (i14 > length - i15) {
                this._needRehash = true;
            } else if (this._collCount >= i15) {
                this._needRehash = true;
            }
        }
    }

    private void expandCollision() {
        Bucket[] bucketArr = this._collList;
        this._collList = (Bucket[]) ArraysCompat.copyOf(bucketArr, bucketArr.length * 2);
    }

    private int findBestBucket() {
        Bucket[] bucketArr = this._collList;
        int i10 = this._collEnd;
        int i11 = Integer.MAX_VALUE;
        int i12 = -1;
        for (int i13 = 0; i13 < i10; i13++) {
            int length = bucketArr[i13].length();
            if (length < i11) {
                if (length == 1) {
                    return i13;
                }
                i12 = i13;
                i11 = length;
            }
        }
        return i12;
    }

    private TableInfo initTableInfo(int i10) {
        return new TableInfo(0, i10 - 1, new int[i10], new Name[i10], null, 0, 0, 0);
    }

    private void mergeChild(TableInfo tableInfo) {
        int i10 = tableInfo.count;
        TableInfo tableInfo2 = this._tableInfo.get();
        if (i10 <= tableInfo2.count) {
            return;
        }
        if (i10 > 6000 || tableInfo.longestCollisionList > 63) {
            tableInfo = initTableInfo(64);
        }
        d.a(this._tableInfo, tableInfo2, tableInfo);
    }

    private void unshareCollision() {
        Bucket[] bucketArr = this._collList;
        if (bucketArr == null) {
            this._collList = new Bucket[32];
        } else {
            this._collList = (Bucket[]) ArraysCompat.copyOf(bucketArr, bucketArr.length);
        }
        this._collListShared = false;
    }

    private void unshareMain() {
        int[] iArr = this._mainHash;
        this._mainHash = ArraysCompat.copyOf(iArr, iArr.length);
        this._mainHashShared = false;
    }

    private void unshareNames() {
        Name[] nameArr = this._mainNames;
        this._mainNames = (Name[]) ArraysCompat.copyOf(nameArr, nameArr.length);
        this._mainNamesShared = false;
    }

    public int bucketCount() {
        return this._mainHash.length;
    }

    public int calcHash(int i10, int i11) {
        int i12 = ((i10 ^ (i10 >>> 15)) + (i11 * 33)) ^ this._hashSeed;
        return i12 + (i12 >>> 7);
    }

    public BytesToNameCanonicalizer makeChild(boolean z6, boolean z10) {
        return new BytesToNameCanonicalizer(this, z10, this._hashSeed, this._tableInfo.get());
    }

    public void release() {
        if (this._parent == null || !maybeDirty()) {
            return;
        }
        this._parent.mergeChild(new TableInfo(this));
        this._mainHashShared = true;
        this._mainNamesShared = true;
        this._collListShared = true;
    }

    protected void reportTooManyCollisions(int i10) {
        throw new IllegalStateException("Longest collision chain in symbol table (of size " + this._count + ") now exceeds maximum, " + i10 + " -- suspect a DoS attack based on hash collisions");
    }

    public int size() {
        AtomicReference<TableInfo> atomicReference = this._tableInfo;
        return atomicReference != null ? atomicReference.get().count : this._count;
    }

    private BytesToNameCanonicalizer(BytesToNameCanonicalizer bytesToNameCanonicalizer, boolean z6, int i10, TableInfo tableInfo) {
        this._parent = bytesToNameCanonicalizer;
        this._hashSeed = i10;
        this._intern = z6;
        this._tableInfo = null;
        this._count = tableInfo.count;
        this._mainHashMask = tableInfo.mainHashMask;
        this._mainHash = tableInfo.mainHash;
        this._mainNames = tableInfo.mainNames;
        this._collList = tableInfo.collList;
        this._collCount = tableInfo.collCount;
        this._collEnd = tableInfo.collEnd;
        this._longestCollisionList = tableInfo.longestCollisionList;
        this._needRehash = false;
        this._mainHashShared = true;
        this._mainNamesShared = true;
        this._collListShared = true;
    }

    private static Name constructName(int i10, String str, int[] iArr, int i11) {
        if (i11 < 4) {
            if (i11 == 1) {
                return new Name1(str, i10, iArr[0]);
            }
            if (i11 == 2) {
                return new Name2(str, i10, iArr[0], iArr[1]);
            }
            if (i11 == 3) {
                return new Name3(str, i10, iArr[0], iArr[1], iArr[2]);
            }
        }
        int[] iArr2 = new int[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            iArr2[i12] = iArr[i12];
        }
        return new NameN(str, i10, iArr2, i11);
    }

    protected static BytesToNameCanonicalizer createRoot(int i10) {
        return new BytesToNameCanonicalizer(64, true, i10);
    }

    public static Name getEmptyName() {
        return Name1.getEmptyName();
    }

    public int calcHash(int[] iArr, int i10) {
        if (i10 >= 3) {
            int i11 = iArr[0] ^ this._hashSeed;
            int i12 = (((i11 + (i11 >>> 9)) * 33) + iArr[1]) * MULT2;
            int i13 = (i12 + (i12 >>> 15)) ^ iArr[2];
            int i14 = i13 + (i13 >>> 17);
            for (int i15 = 3; i15 < i10; i15++) {
                int i16 = (i14 * 31) ^ iArr[i15];
                int i17 = i16 + (i16 >>> 3);
                i14 = i17 ^ (i17 << 7);
            }
            int i18 = i14 + (i14 >>> 15);
            return (i18 << 9) ^ i18;
        }
        throw new IllegalArgumentException();
    }

    public Name addName(String str, int[] iArr, int i10) {
        int iCalcHash;
        if (this._intern) {
            str = InternCache.instance.intern(str);
        }
        if (i10 < 3) {
            iCalcHash = i10 == 1 ? calcHash(iArr[0]) : calcHash(iArr[0], iArr[1]);
        } else {
            iCalcHash = calcHash(iArr, i10);
        }
        Name nameConstructName = constructName(iCalcHash, str, iArr, i10);
        _addSymbol(iCalcHash, nameConstructName);
        return nameConstructName;
    }

    public Name findName(int i10, int i11) {
        int iCalcHash = i11 == 0 ? calcHash(i10) : calcHash(i10, i11);
        int i12 = this._mainHashMask & iCalcHash;
        int i13 = this._mainHash[i12];
        if ((((i13 >> 8) ^ iCalcHash) << 8) == 0) {
            Name name = this._mainNames[i12];
            if (name == null) {
                return null;
            }
            if (name.equals(i10, i11)) {
                return name;
            }
        } else if (i13 == 0) {
            return null;
        }
        int i14 = i13 & 255;
        if (i14 > 0) {
            Bucket bucket = this._collList[i14 - 1];
            if (bucket != null) {
                return bucket.find(iCalcHash, i10, i11);
            }
        }
        return null;
    }

    public Name findName(int[] iArr, int i10) {
        if (i10 < 3) {
            return findName(iArr[0], i10 >= 2 ? iArr[1] : 0);
        }
        int iCalcHash = calcHash(iArr, i10);
        int i11 = this._mainHashMask & iCalcHash;
        int i12 = this._mainHash[i11];
        if ((((i12 >> 8) ^ iCalcHash) << 8) == 0) {
            Name name = this._mainNames[i11];
            if (name == null || name.equals(iArr, i10)) {
                return name;
            }
        } else if (i12 == 0) {
            return null;
        }
        int i13 = i12 & 255;
        if (i13 > 0) {
            Bucket bucket = this._collList[i13 - 1];
            if (bucket != null) {
                return bucket.find(iCalcHash, iArr, i10);
            }
        }
        return null;
    }
}

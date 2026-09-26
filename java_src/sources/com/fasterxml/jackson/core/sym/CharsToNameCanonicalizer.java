package com.fasterxml.jackson.core.sym;

import com.fasterxml.jackson.core.util.ArraysCompat;
import com.fasterxml.jackson.core.util.InternCache;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class CharsToNameCanonicalizer {
    protected static final int DEFAULT_TABLE_SIZE = 64;
    public static final int HASH_MULT = 33;
    static final int MAX_COLL_CHAIN_FOR_REUSE = 63;
    static final int MAX_COLL_CHAIN_LENGTH = 255;
    static final int MAX_ENTRIES_FOR_REUSE = 12000;
    protected static final int MAX_TABLE_SIZE = 65536;
    static final CharsToNameCanonicalizer sBootstrapSymbolTable = new CharsToNameCanonicalizer();
    protected Bucket[] _buckets;
    protected final boolean _canonicalize;
    protected boolean _dirty;
    private final int _hashSeed;
    protected int _indexMask;
    protected final boolean _intern;
    protected int _longestCollisionList;
    protected CharsToNameCanonicalizer _parent;
    protected int _size;
    protected int _sizeThreshold;
    protected String[] _symbols;

    static final class Bucket {
        private final int _length;
        private final Bucket _next;
        private final String _symbol;

        public Bucket getNext() {
            return this._next;
        }

        public String getSymbol() {
            return this._symbol;
        }

        public int length() {
            return this._length;
        }

        public String find(char[] cArr, int i10, int i11) {
            String symbol = this._symbol;
            Bucket next = this._next;
            while (true) {
                if (symbol.length() == i11) {
                    int i12 = 0;
                    while (symbol.charAt(i12) == cArr[i10 + i12] && (i12 = i12 + 1) < i11) {
                    }
                    if (i12 == i11) {
                        return symbol;
                    }
                }
                if (next == null) {
                    return null;
                }
                symbol = next.getSymbol();
                next = next.getNext();
            }
        }

        public Bucket(String str, Bucket bucket) {
            this._symbol = str;
            this._next = bucket;
            this._length = bucket != null ? 1 + bucket._length : 1;
        }
    }

    private CharsToNameCanonicalizer() {
        this._canonicalize = true;
        this._intern = true;
        this._dirty = true;
        this._hashSeed = 0;
        this._longestCollisionList = 0;
        initTables(64);
    }

    private static int _thresholdSize(int i10) {
        return i10 - (i10 >> 2);
    }

    public static CharsToNameCanonicalizer createRoot() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        return createRoot((((int) jCurrentTimeMillis) + ((int) (jCurrentTimeMillis >>> 32))) | 1);
    }

    public int _hashToIndex(int i10) {
        return (i10 + (i10 >>> 15)) & this._indexMask;
    }

    public int calcHash(char[] cArr, int i10, int i11) {
        int i12 = this._hashSeed;
        for (int i13 = 0; i13 < i11; i13++) {
            i12 = (i12 * 33) + cArr[i13];
        }
        if (i12 == 0) {
            return 1;
        }
        return i12;
    }

    public String findSymbol(char[] cArr, int i10, int i11, int i12) {
        String strFind;
        if (i11 < 1) {
            return "";
        }
        if (!this._canonicalize) {
            return new String(cArr, i10, i11);
        }
        int i_hashToIndex = _hashToIndex(i12);
        String str = this._symbols[i_hashToIndex];
        if (str != null) {
            if (str.length() == i11) {
                int i13 = 0;
                while (str.charAt(i13) == cArr[i10 + i13] && (i13 = i13 + 1) < i11) {
                }
                if (i13 == i11) {
                    return str;
                }
            }
            Bucket bucket = this._buckets[i_hashToIndex >> 1];
            if (bucket != null && (strFind = bucket.find(cArr, i10, i11)) != null) {
                return strFind;
            }
        }
        if (!this._dirty) {
            copyArrays();
            this._dirty = true;
        } else if (this._size >= this._sizeThreshold) {
            rehash();
            i_hashToIndex = _hashToIndex(calcHash(cArr, i10, i11));
        }
        String str2 = new String(cArr, i10, i11);
        if (this._intern) {
            str2 = InternCache.instance.intern(str2);
        }
        this._size++;
        String[] strArr = this._symbols;
        if (strArr[i_hashToIndex] == null) {
            strArr[i_hashToIndex] = str2;
        } else {
            int i14 = i_hashToIndex >> 1;
            Bucket bucket2 = new Bucket(str2, this._buckets[i14]);
            this._buckets[i14] = bucket2;
            int iMax = Math.max(bucket2.length(), this._longestCollisionList);
            this._longestCollisionList = iMax;
            if (iMax > 255) {
                reportTooManyCollisions(255);
            }
        }
        return str2;
    }

    public int hashSeed() {
        return this._hashSeed;
    }

    public CharsToNameCanonicalizer makeChild(boolean z6, boolean z10) {
        String[] strArr;
        Bucket[] bucketArr;
        int i10;
        int i11;
        int i12;
        synchronized (this) {
            strArr = this._symbols;
            bucketArr = this._buckets;
            i10 = this._size;
            i11 = this._hashSeed;
            i12 = this._longestCollisionList;
        }
        return new CharsToNameCanonicalizer(this, z6, z10, strArr, bucketArr, i10, i11, i12);
    }

    public int maxCollisionLength() {
        return this._longestCollisionList;
    }

    public boolean maybeDirty() {
        return this._dirty;
    }

    public int size() {
        return this._size;
    }

    private void copyArrays() {
        String[] strArr = this._symbols;
        this._symbols = (String[]) ArraysCompat.copyOf(strArr, strArr.length);
        Bucket[] bucketArr = this._buckets;
        this._buckets = (Bucket[]) ArraysCompat.copyOf(bucketArr, bucketArr.length);
    }

    private void initTables(int i10) {
        this._symbols = new String[i10];
        this._buckets = new Bucket[i10 >> 1];
        this._indexMask = i10 - 1;
        this._size = 0;
        this._longestCollisionList = 0;
        this._sizeThreshold = _thresholdSize(i10);
    }

    private CharsToNameCanonicalizer makeOrphan(int i10) {
        return new CharsToNameCanonicalizer(null, true, true, this._symbols, this._buckets, this._size, i10, this._longestCollisionList);
    }

    private void rehash() {
        String[] strArr = this._symbols;
        int length = strArr.length;
        int i10 = length + length;
        if (i10 > 65536) {
            this._size = 0;
            Arrays.fill(strArr, (Object) null);
            Arrays.fill(this._buckets, (Object) null);
            this._dirty = true;
            return;
        }
        Bucket[] bucketArr = this._buckets;
        this._symbols = new String[i10];
        this._buckets = new Bucket[i10 >> 1];
        this._indexMask = i10 - 1;
        this._sizeThreshold = _thresholdSize(i10);
        int i11 = 0;
        int iMax = 0;
        for (String str : strArr) {
            if (str != null) {
                i11++;
                int i_hashToIndex = _hashToIndex(calcHash(str));
                String[] strArr2 = this._symbols;
                if (strArr2[i_hashToIndex] == null) {
                    strArr2[i_hashToIndex] = str;
                } else {
                    int i12 = i_hashToIndex >> 1;
                    Bucket bucket = new Bucket(str, this._buckets[i12]);
                    this._buckets[i12] = bucket;
                    iMax = Math.max(iMax, bucket.length());
                }
            }
        }
        int i13 = length >> 1;
        for (int i14 = 0; i14 < i13; i14++) {
            for (Bucket next = bucketArr[i14]; next != null; next = next.getNext()) {
                i11++;
                String symbol = next.getSymbol();
                int i_hashToIndex2 = _hashToIndex(calcHash(symbol));
                String[] strArr3 = this._symbols;
                if (strArr3[i_hashToIndex2] == null) {
                    strArr3[i_hashToIndex2] = symbol;
                } else {
                    int i15 = i_hashToIndex2 >> 1;
                    Bucket bucket2 = new Bucket(symbol, this._buckets[i15]);
                    this._buckets[i15] = bucket2;
                    iMax = Math.max(iMax, bucket2.length());
                }
            }
        }
        this._longestCollisionList = iMax;
        if (i11 == this._size) {
            return;
        }
        throw new Error("Internal error on SymbolTable.rehash(): had " + this._size + " entries; now have " + i11 + ".");
    }

    public int bucketCount() {
        return this._symbols.length;
    }

    public int calcHash(String str) {
        int length = str.length();
        int iCharAt = this._hashSeed;
        for (int i10 = 0; i10 < length; i10++) {
            iCharAt = (iCharAt * 33) + str.charAt(i10);
        }
        if (iCharAt == 0) {
            return 1;
        }
        return iCharAt;
    }

    public int collisionCount() {
        int length = 0;
        for (Bucket bucket : this._buckets) {
            if (bucket != null) {
                length += bucket.length();
            }
        }
        return length;
    }

    protected void reportTooManyCollisions(int i10) {
        throw new IllegalStateException("Longest collision chain in symbol table (of size " + this._size + ") now exceeds maximum, " + i10 + " -- suspect a DoS attack based on hash collisions");
    }

    private CharsToNameCanonicalizer(CharsToNameCanonicalizer charsToNameCanonicalizer, boolean z6, boolean z10, String[] strArr, Bucket[] bucketArr, int i10, int i11, int i12) {
        this._parent = charsToNameCanonicalizer;
        this._canonicalize = z6;
        this._intern = z10;
        this._symbols = strArr;
        this._buckets = bucketArr;
        this._size = i10;
        this._hashSeed = i11;
        int length = strArr.length;
        this._sizeThreshold = _thresholdSize(length);
        this._indexMask = length - 1;
        this._longestCollisionList = i12;
        this._dirty = false;
    }

    protected static CharsToNameCanonicalizer createRoot(int i10) {
        return sBootstrapSymbolTable.makeOrphan(i10);
    }

    private void mergeChild(CharsToNameCanonicalizer charsToNameCanonicalizer) {
        if (charsToNameCanonicalizer.size() <= MAX_ENTRIES_FOR_REUSE && charsToNameCanonicalizer._longestCollisionList <= 63) {
            if (charsToNameCanonicalizer.size() <= size()) {
                return;
            }
            synchronized (this) {
                this._symbols = charsToNameCanonicalizer._symbols;
                this._buckets = charsToNameCanonicalizer._buckets;
                this._size = charsToNameCanonicalizer._size;
                this._sizeThreshold = charsToNameCanonicalizer._sizeThreshold;
                this._indexMask = charsToNameCanonicalizer._indexMask;
                this._longestCollisionList = charsToNameCanonicalizer._longestCollisionList;
                this._dirty = false;
            }
            return;
        }
        synchronized (this) {
            initTables(64);
            this._dirty = false;
        }
    }

    public void release() {
        CharsToNameCanonicalizer charsToNameCanonicalizer;
        if (maybeDirty() && (charsToNameCanonicalizer = this._parent) != null) {
            charsToNameCanonicalizer.mergeChild(this);
            this._dirty = false;
        }
    }
}

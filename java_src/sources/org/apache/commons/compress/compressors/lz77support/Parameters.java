package org.apache.commons.compress.compressors.lz77support;

/* JADX INFO: loaded from: classes8.dex */
public final class Parameters {
    public static final int TRUE_MIN_BACK_REFERENCE_LENGTH = 3;
    private final boolean lazyMatching;
    private final int lazyThreshold;
    private final int maxBackReferenceLength;
    private final int maxCandidates;
    private final int maxLiteralLength;
    private final int maxOffset;
    private final int minBackReferenceLength;
    private final int niceBackReferenceLength;
    private final int windowSize;

    public static class Builder {
        private Boolean lazyMatches;
        private Integer lazyThreshold;
        private int maxBackReferenceLength;
        private Integer maxCandidates;
        private int maxLiteralLength;
        private int maxOffset;
        private int minBackReferenceLength;
        private Integer niceBackReferenceLength;
        private final int windowSize;

        public Builder withMaxLiteralLength(int i10) {
            this.maxLiteralLength = i10 < 1 ? this.windowSize : Math.min(i10, this.windowSize);
            return this;
        }

        public Builder withMaxOffset(int i10) {
            this.maxOffset = i10 < 1 ? this.windowSize - 1 : Math.min(i10, this.windowSize - 1);
            return this;
        }

        public Builder withMinBackReferenceLength(int i10) {
            int iMax = Math.max(3, i10);
            this.minBackReferenceLength = iMax;
            if (this.windowSize < iMax) {
                throw new IllegalArgumentException("minBackReferenceLength can't be bigger than windowSize");
            }
            if (this.maxBackReferenceLength < iMax) {
                this.maxBackReferenceLength = iMax;
            }
            return this;
        }

        private Builder(int i10) {
            if (i10 < 2 || !Parameters.isPowerOfTwo(i10)) {
                throw new IllegalArgumentException("windowSize must be a power of two");
            }
            this.windowSize = i10;
            this.minBackReferenceLength = 3;
            int i11 = i10 - 1;
            this.maxBackReferenceLength = i11;
            this.maxOffset = i11;
            this.maxLiteralLength = i10;
        }

        public Parameters build() {
            int iIntValue;
            int i10;
            Integer num = this.niceBackReferenceLength;
            int iIntValue2 = num != null ? num.intValue() : Math.max(this.minBackReferenceLength, this.maxBackReferenceLength / 2);
            Integer num2 = this.maxCandidates;
            int iIntValue3 = num2 != null ? num2.intValue() : Math.max(256, this.windowSize / 128);
            Boolean bool = this.lazyMatches;
            boolean z6 = bool == null || bool.booleanValue();
            if (z6) {
                Integer num3 = this.lazyThreshold;
                if (num3 != null) {
                    iIntValue = num3.intValue();
                } else {
                    i10 = iIntValue2;
                }
                return new Parameters(this.windowSize, this.minBackReferenceLength, this.maxBackReferenceLength, this.maxOffset, this.maxLiteralLength, iIntValue2, iIntValue3, z6, i10);
            }
            iIntValue = this.minBackReferenceLength;
            i10 = iIntValue;
            return new Parameters(this.windowSize, this.minBackReferenceLength, this.maxBackReferenceLength, this.maxOffset, this.maxLiteralLength, iIntValue2, iIntValue3, z6, i10);
        }

        public Builder tunedForCompressionRatio() {
            Integer numValueOf = Integer.valueOf(this.maxBackReferenceLength);
            this.lazyThreshold = numValueOf;
            this.niceBackReferenceLength = numValueOf;
            this.maxCandidates = Integer.valueOf(Math.max(32, this.windowSize / 16));
            this.lazyMatches = Boolean.TRUE;
            return this;
        }

        public Builder tunedForSpeed() {
            this.niceBackReferenceLength = Integer.valueOf(Math.max(this.minBackReferenceLength, this.maxBackReferenceLength / 8));
            this.maxCandidates = Integer.valueOf(Math.max(32, this.windowSize / 1024));
            this.lazyMatches = Boolean.FALSE;
            this.lazyThreshold = Integer.valueOf(this.minBackReferenceLength);
            return this;
        }

        public Builder withMaxBackReferenceLength(int i10) {
            int iMin = this.minBackReferenceLength;
            if (i10 >= iMin) {
                iMin = Math.min(i10, this.windowSize - 1);
            }
            this.maxBackReferenceLength = iMin;
            return this;
        }

        public Builder withLazyMatching(boolean z6) {
            this.lazyMatches = Boolean.valueOf(z6);
            return this;
        }

        public Builder withLazyThreshold(int i10) {
            this.lazyThreshold = Integer.valueOf(i10);
            return this;
        }

        public Builder withMaxNumberOfCandidates(int i10) {
            this.maxCandidates = Integer.valueOf(i10);
            return this;
        }

        public Builder withNiceBackReferenceLength(int i10) {
            this.niceBackReferenceLength = Integer.valueOf(i10);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isPowerOfTwo(int i10) {
        return (i10 & (i10 + (-1))) == 0;
    }

    public boolean getLazyMatching() {
        return this.lazyMatching;
    }

    public int getLazyMatchingThreshold() {
        return this.lazyThreshold;
    }

    public int getMaxBackReferenceLength() {
        return this.maxBackReferenceLength;
    }

    public int getMaxCandidates() {
        return this.maxCandidates;
    }

    public int getMaxLiteralLength() {
        return this.maxLiteralLength;
    }

    public int getMaxOffset() {
        return this.maxOffset;
    }

    public int getMinBackReferenceLength() {
        return this.minBackReferenceLength;
    }

    public int getNiceBackReferenceLength() {
        return this.niceBackReferenceLength;
    }

    public int getWindowSize() {
        return this.windowSize;
    }

    private Parameters(int i10, int i11, int i12, int i13, int i14, int i15, int i16, boolean z6, int i17) {
        this.windowSize = i10;
        this.minBackReferenceLength = i11;
        this.maxBackReferenceLength = i12;
        this.maxOffset = i13;
        this.maxLiteralLength = i14;
        this.niceBackReferenceLength = i15;
        this.maxCandidates = i16;
        this.lazyMatching = z6;
        this.lazyThreshold = i17;
    }

    public static Builder builder(int i10) {
        return new Builder(i10);
    }
}

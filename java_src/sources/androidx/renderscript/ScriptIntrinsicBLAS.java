package androidx.renderscript;

import com.google.firebase.remoteconfig.a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes6.dex */
public final class ScriptIntrinsicBLAS extends ScriptIntrinsic {
    public static final int CONJ_TRANSPOSE = 113;
    private static final int INTRINSIC_API_LEVEL = 23;
    public static final int LEFT = 141;
    public static final int LOWER = 122;
    public static final int NON_UNIT = 131;
    public static final int NO_TRANSPOSE = 111;
    public static final int RIGHT = 142;
    private static final int RsBlas_bnnm = 1000;
    private static final int RsBlas_caxpy = 29;
    private static final int RsBlas_ccopy = 28;
    private static final int RsBlas_cdotc_sub = 6;
    private static final int RsBlas_cdotu_sub = 5;
    private static final int RsBlas_cgbmv = 64;
    private static final int RsBlas_cgemm = 125;
    private static final int RsBlas_cgemv = 63;
    private static final int RsBlas_cgerc = 99;
    private static final int RsBlas_cgeru = 98;
    private static final int RsBlas_chbmv = 96;
    private static final int RsBlas_chemm = 137;
    private static final int RsBlas_chemv = 95;
    private static final int RsBlas_cher = 100;
    private static final int RsBlas_cher2 = 102;
    private static final int RsBlas_cher2k = 139;
    private static final int RsBlas_cherk = 138;
    private static final int RsBlas_chpmv = 97;
    private static final int RsBlas_chpr = 101;
    private static final int RsBlas_chpr2 = 103;
    private static final int RsBlas_cscal = 43;
    private static final int RsBlas_csscal = 45;
    private static final int RsBlas_cswap = 27;
    private static final int RsBlas_csymm = 126;
    private static final int RsBlas_csyr2k = 128;
    private static final int RsBlas_csyrk = 127;
    private static final int RsBlas_ctbmv = 66;
    private static final int RsBlas_ctbsv = 69;
    private static final int RsBlas_ctpmv = 67;
    private static final int RsBlas_ctpsv = 70;
    private static final int RsBlas_ctrmm = 129;
    private static final int RsBlas_ctrmv = 65;
    private static final int RsBlas_ctrsm = 130;
    private static final int RsBlas_ctrsv = 68;
    private static final int RsBlas_dasum = 12;
    private static final int RsBlas_daxpy = 26;
    private static final int RsBlas_dcopy = 25;
    private static final int RsBlas_ddot = 4;
    private static final int RsBlas_dgbmv = 56;
    private static final int RsBlas_dgemm = 119;
    private static final int RsBlas_dgemv = 55;
    private static final int RsBlas_dger = 90;
    private static final int RsBlas_dnrm2 = 11;
    private static final int RsBlas_drot = 39;
    private static final int RsBlas_drotg = 37;
    private static final int RsBlas_drotm = 40;
    private static final int RsBlas_drotmg = 38;
    private static final int RsBlas_dsbmv = 88;
    private static final int RsBlas_dscal = 42;
    private static final int RsBlas_dsdot = 2;
    private static final int RsBlas_dspmv = 89;
    private static final int RsBlas_dspr = 92;
    private static final int RsBlas_dspr2 = 94;
    private static final int RsBlas_dswap = 24;
    private static final int RsBlas_dsymm = 120;
    private static final int RsBlas_dsymv = 87;
    private static final int RsBlas_dsyr = 91;
    private static final int RsBlas_dsyr2 = 93;
    private static final int RsBlas_dsyr2k = 122;
    private static final int RsBlas_dsyrk = 121;
    private static final int RsBlas_dtbmv = 58;
    private static final int RsBlas_dtbsv = 61;
    private static final int RsBlas_dtpmv = 59;
    private static final int RsBlas_dtpsv = 62;
    private static final int RsBlas_dtrmm = 123;
    private static final int RsBlas_dtrmv = 57;
    private static final int RsBlas_dtrsm = 124;
    private static final int RsBlas_dtrsv = 60;
    private static final int RsBlas_dzasum = 16;
    private static final int RsBlas_dznrm2 = 15;
    private static final int RsBlas_icamax = 19;
    private static final int RsBlas_idamax = 18;
    private static final int RsBlas_isamax = 17;
    private static final int RsBlas_izamax = 20;
    private static final int RsBlas_sasum = 10;
    private static final int RsBlas_saxpy = 23;
    private static final int RsBlas_scasum = 14;
    private static final int RsBlas_scnrm2 = 13;
    private static final int RsBlas_scopy = 22;
    private static final int RsBlas_sdot = 3;
    private static final int RsBlas_sdsdot = 1;
    private static final int RsBlas_sgbmv = 48;
    private static final int RsBlas_sgemm = 113;
    private static final int RsBlas_sgemv = 47;
    private static final int RsBlas_sger = 82;
    private static final int RsBlas_snrm2 = 9;
    private static final int RsBlas_srot = 35;
    private static final int RsBlas_srotg = 33;
    private static final int RsBlas_srotm = 36;
    private static final int RsBlas_srotmg = 34;
    private static final int RsBlas_ssbmv = 80;
    private static final int RsBlas_sscal = 41;
    private static final int RsBlas_sspmv = 81;
    private static final int RsBlas_sspr = 84;
    private static final int RsBlas_sspr2 = 86;
    private static final int RsBlas_sswap = 21;
    private static final int RsBlas_ssymm = 114;
    private static final int RsBlas_ssymv = 79;
    private static final int RsBlas_ssyr = 83;
    private static final int RsBlas_ssyr2 = 85;
    private static final int RsBlas_ssyr2k = 116;
    private static final int RsBlas_ssyrk = 115;
    private static final int RsBlas_stbmv = 50;
    private static final int RsBlas_stbsv = 53;
    private static final int RsBlas_stpmv = 51;
    private static final int RsBlas_stpsv = 54;
    private static final int RsBlas_strmm = 117;
    private static final int RsBlas_strmv = 49;
    private static final int RsBlas_strsm = 118;
    private static final int RsBlas_strsv = 52;
    private static final int RsBlas_zaxpy = 32;
    private static final int RsBlas_zcopy = 31;
    private static final int RsBlas_zdotc_sub = 8;
    private static final int RsBlas_zdotu_sub = 7;
    private static final int RsBlas_zdscal = 46;
    private static final int RsBlas_zgbmv = 72;
    private static final int RsBlas_zgemm = 131;
    private static final int RsBlas_zgemv = 71;
    private static final int RsBlas_zgerc = 108;
    private static final int RsBlas_zgeru = 107;
    private static final int RsBlas_zhbmv = 105;
    private static final int RsBlas_zhemm = 140;
    private static final int RsBlas_zhemv = 104;
    private static final int RsBlas_zher = 109;
    private static final int RsBlas_zher2 = 111;
    private static final int RsBlas_zher2k = 142;
    private static final int RsBlas_zherk = 141;
    private static final int RsBlas_zhpmv = 106;
    private static final int RsBlas_zhpr = 110;
    private static final int RsBlas_zhpr2 = 112;
    private static final int RsBlas_zscal = 44;
    private static final int RsBlas_zswap = 30;
    private static final int RsBlas_zsymm = 132;
    private static final int RsBlas_zsyr2k = 134;
    private static final int RsBlas_zsyrk = 133;
    private static final int RsBlas_ztbmv = 74;
    private static final int RsBlas_ztbsv = 77;
    private static final int RsBlas_ztpmv = 75;
    private static final int RsBlas_ztpsv = 78;
    private static final int RsBlas_ztrmm = 135;
    private static final int RsBlas_ztrmv = 73;
    private static final int RsBlas_ztrsm = 136;
    private static final int RsBlas_ztrsv = 76;
    public static final int TRANSPOSE = 112;
    public static final int UNIT = 132;
    public static final int UPPER = 121;
    private Allocation mLUT;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Diag {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Side {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Transpose {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Uplo {
    }

    static void validateConjTranspose(int i10) {
        if (i10 != 111 && i10 != 113) {
            throw new RSRuntimeException("Invalid transpose passed to BLAS");
        }
    }

    static void validateDiag(int i10) {
        if (i10 != 131 && i10 != 132) {
            throw new RSRuntimeException("Invalid diag passed to BLAS");
        }
    }

    static void validateL3(Element element, int i10, int i11, int i12, Allocation allocation, Allocation allocation2, Allocation allocation3) {
        int x6;
        int y6;
        int x10;
        int y10;
        int x11;
        if ((allocation != null && !allocation.getType().getElement().isCompatible(element)) || ((allocation2 != null && !allocation2.getType().getElement().isCompatible(element)) || (allocation3 != null && !allocation3.getType().getElement().isCompatible(element)))) {
            throw new RSRuntimeException("Called BLAS with wrong Element type");
        }
        if (allocation3 == null) {
            throw new RSRuntimeException("Allocation C cannot be null");
        }
        int y11 = allocation3.getType().getY();
        int x12 = allocation3.getType().getX();
        int x13 = -1;
        if (i12 != 142) {
            if (allocation == null) {
                x6 = -1;
                y6 = -1;
            } else if (i10 == 112 || i10 == 113) {
                y6 = allocation.getType().getY();
                x6 = allocation.getType().getX();
            } else {
                x6 = allocation.getType().getY();
                y6 = allocation.getType().getX();
            }
            if (allocation2 == null) {
                x10 = -1;
                y10 = -1;
            } else if (i11 == 112 || i11 == 113) {
                y10 = allocation2.getType().getY();
                x13 = y6;
                x6 = x6;
                x10 = allocation2.getType().getX();
            } else {
                int y12 = allocation2.getType().getY();
                y10 = allocation2.getType().getX();
                x10 = y12;
            }
            x13 = y6;
        } else {
            if ((allocation == null && allocation2 != null) || (allocation != null && allocation2 == null)) {
                throw new RSRuntimeException("Provided Matrix A without Matrix B, or vice versa");
            }
            if (allocation2 != null) {
                x10 = allocation.getType().getY();
                x11 = allocation.getType().getX();
            } else {
                x10 = -1;
                x11 = -1;
            }
            if (allocation != null) {
                y10 = x11;
                x6 = allocation2.getType().getY();
                x13 = allocation2.getType().getX();
            } else {
                y10 = x11;
                x6 = -1;
            }
        }
        if (allocation != null && allocation2 != null) {
            if (x13 != x10 || x6 != y11 || y10 != x12) {
                throw new RSRuntimeException("Called BLAS with invalid dimensions");
            }
            return;
        }
        if (allocation != null) {
            if (y11 != x12) {
                throw new RSRuntimeException("Matrix C is not symmetric");
            }
            if (x6 != y11) {
                throw new RSRuntimeException("Called BLAS with invalid dimensions");
            }
            return;
        }
        if (allocation != null && allocation2 != null && x13 != x10) {
            throw new RSRuntimeException("Called BLAS with invalid dimensions");
        }
    }

    static void validateSide(int i10) {
        if (i10 != 141 && i10 != 142) {
            throw new RSRuntimeException("Invalid side passed to BLAS");
        }
    }

    static void validateTranspose(int i10) {
        if (i10 != 111 && i10 != 112 && i10 != 113) {
            throw new RSRuntimeException("Invalid transpose passed to BLAS");
        }
    }

    static void validateUplo(int i10) {
        if (i10 != 121 && i10 != 122) {
            throw new RSRuntimeException("Invalid uplo passed to BLAS");
        }
    }

    public void BNNM(Allocation allocation, int i10, Allocation allocation2, int i11, Allocation allocation3, int i12, int i13) {
        long j6;
        long j10;
        long dummyAlloc;
        validateL3(Element.U8(this.mRS), 111, 112, 0, allocation, allocation2, allocation3);
        if (i10 < 0 || i10 > 255) {
            throw new RSRuntimeException("Invalid a_offset passed to BNNM");
        }
        if (i11 < 0 || i11 > 255) {
            throw new RSRuntimeException("Invalid b_offset passed to BNNM");
        }
        int y6 = allocation.getType().getY();
        int y10 = allocation2.getType().getY();
        int x6 = allocation.getType().getX();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            long dummyAlloc2 = getDummyAlloc(allocation);
            long dummyAlloc3 = getDummyAlloc(allocation2);
            dummyAlloc = getDummyAlloc(allocation3);
            j10 = dummyAlloc3;
            j6 = dummyAlloc2;
        } else {
            j6 = id;
            j10 = id2;
            dummyAlloc = id3;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_BNNM(getID(renderScript), y6, y10, x6, j6, i10, j10, i11, dummyAlloc, i12, i13, zIsIncSupp);
    }

    public void CGBMV(int i10, int i11, int i12, Float2 float2, Allocation allocation, Allocation allocation2, int i13, Float2 float3, Allocation allocation3, int i14) {
        validateGEMV(Element.F32_2(this.mRS), i10, allocation, allocation2, i13, allocation3, i14);
        if (i11 < 0 || i12 < 0) {
            throw new RSRuntimeException("KL and KU must be greater than or equal to 0");
        }
        int y6 = allocation.getType().getY();
        int x6 = allocation.getType().getX();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
            id3 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 64, i10, 0, 0, 0, 0, y6, x6, 0, float2.f785x, float2.f786y, id, id2, float3.f785x, float3.f786y, id3, i13, i14, i11, i12, zIsIncSupp);
    }

    public void CGEMM(int i10, int i11, Float2 float2, Allocation allocation, Allocation allocation2, Float2 float3, Allocation allocation3) {
        int y6;
        int x6;
        long dummyAlloc;
        long dummyAlloc2;
        long dummyAlloc3;
        validateTranspose(i10);
        validateTranspose(i11);
        validateL3(Element.F32_2(this.mRS), i10, i11, 0, allocation, allocation2, allocation3);
        if (i10 != 111) {
            y6 = allocation.getType().getX();
            x6 = allocation.getType().getY();
        } else {
            y6 = allocation.getType().getY();
            x6 = allocation.getType().getX();
        }
        int i12 = y6;
        int i13 = x6;
        int y10 = i11 != 111 ? allocation2.getType().getY() : allocation2.getType().getX();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            dummyAlloc = getDummyAlloc(allocation);
            dummyAlloc2 = getDummyAlloc(allocation2);
            dummyAlloc3 = getDummyAlloc(allocation3);
        } else {
            dummyAlloc = id;
            dummyAlloc2 = id2;
            dummyAlloc3 = id3;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 125, i10, i11, 0, 0, 0, i12, y10, i13, float2.f785x, float2.f786y, dummyAlloc, dummyAlloc2, float3.f785x, float3.f786y, dummyAlloc3, 0, 0, 0, 0, zIsIncSupp);
    }

    public void CGEMV(int i10, Float2 float2, Allocation allocation, Allocation allocation2, int i11, Float2 float3, Allocation allocation3, int i12) {
        validateGEMV(Element.F32_2(this.mRS), i10, allocation, allocation2, i11, allocation3, i12);
        int y6 = allocation.getType().getY();
        int x6 = allocation.getType().getX();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
            id3 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 63, i10, 0, 0, 0, 0, y6, x6, 0, float2.f785x, float2.f786y, id, id2, float3.f785x, float3.f786y, id3, i11, i12, 0, 0, zIsIncSupp);
    }

    public void CGERC(Float2 float2, Allocation allocation, int i10, Allocation allocation2, int i11, Allocation allocation3) {
        validateGERU(Element.F32_2(this.mRS), allocation, i10, allocation2, i11, allocation3);
        int y6 = allocation3.getType().getY();
        int x6 = allocation3.getType().getX();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation3.getID(this.mRS);
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation3);
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        long j6 = id;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 99, 0, 0, 0, 0, 0, y6, x6, 0, float2.f785x, float2.f786y, id2, id3, 0.0f, 0.0f, j6, i10, i11, 0, 0, zIsIncSupp);
    }

    public void CGERU(Float2 float2, Allocation allocation, int i10, Allocation allocation2, int i11, Allocation allocation3) {
        validateGERU(Element.F32_2(this.mRS), allocation, i10, allocation2, i11, allocation3);
        int y6 = allocation3.getType().getY();
        int x6 = allocation3.getType().getX();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation3.getID(this.mRS);
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation3);
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        long j6 = id;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 98, 0, 0, 0, 0, 0, y6, x6, 0, float2.f785x, float2.f786y, id2, id3, 0.0f, 0.0f, j6, i10, i11, 0, 0, zIsIncSupp);
    }

    public void CHBMV(int i10, int i11, Float2 float2, Allocation allocation, Allocation allocation2, int i12, Float2 float3, Allocation allocation3, int i13) {
        int iValidateSYR2 = validateSYR2(Element.F32_2(this.mRS), i10, allocation2, i12, allocation3, i13, allocation);
        if (i11 < 0) {
            throw new RSRuntimeException("K must be 0 or greater for HBMV");
        }
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
            id3 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 96, 0, 0, 0, i10, 0, 0, iValidateSYR2, i11, float2.f785x, float2.f786y, id, id2, float3.f785x, float3.f786y, id3, i12, i13, 0, 0, zIsIncSupp);
    }

    public void CHEMM(int i10, int i11, Float2 float2, Allocation allocation, Allocation allocation2, Float2 float3, Allocation allocation3) {
        long j6;
        long dummyAlloc;
        long dummyAlloc2;
        validateUplo(i11);
        validateHEMM(Element.F32_2(this.mRS), i10, allocation, allocation2, allocation3);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            long dummyAlloc3 = getDummyAlloc(allocation);
            dummyAlloc = getDummyAlloc(allocation2);
            j6 = dummyAlloc3;
            dummyAlloc2 = getDummyAlloc(allocation3);
        } else {
            j6 = id;
            dummyAlloc = id2;
            dummyAlloc2 = id3;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 137, 0, 0, i10, i11, 0, allocation3.getType().getY(), allocation3.getType().getX(), 0, float2.f785x, float2.f786y, j6, dummyAlloc, float3.f785x, float3.f786y, dummyAlloc2, 0, 0, 0, 0, zIsIncSupp);
    }

    public void CHEMV(int i10, Float2 float2, Allocation allocation, Allocation allocation2, int i11, Float2 float3, Allocation allocation3, int i12) {
        int iValidateSYR2 = validateSYR2(Element.F32_2(this.mRS), i10, allocation2, i11, allocation3, i12, allocation);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
            id3 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 95, 0, 0, 0, i10, 0, 0, iValidateSYR2, 0, float2.f785x, float2.f786y, id, id2, float3.f785x, float3.f786y, id3, i11, i12, 0, 0, zIsIncSupp);
    }

    public void CHER(int i10, float f, Allocation allocation, int i11, Allocation allocation2) {
        long j6;
        long dummyAlloc;
        int iValidateSYR = validateSYR(Element.F32_2(this.mRS), i10, allocation, i11, allocation2);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation2.getID(this.mRS);
        long id2 = allocation.getID(this.mRS);
        if (zIsIncSupp) {
            long dummyAlloc2 = getDummyAlloc(allocation2);
            dummyAlloc = getDummyAlloc(allocation);
            j6 = dummyAlloc2;
        } else {
            j6 = id;
            dummyAlloc = id2;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 100, 0, 0, 0, i10, 0, 0, iValidateSYR, 0, f, 0.0f, dummyAlloc, 0L, 0.0f, 0.0f, j6, i11, 0, 0, 0, zIsIncSupp);
    }

    public void CHER2(int i10, Float2 float2, Allocation allocation, int i11, Allocation allocation2, int i12, Allocation allocation3) {
        int iValidateSYR2 = validateSYR2(Element.F32_2(this.mRS), i10, allocation, i11, allocation2, i12, allocation3);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation3.getID(this.mRS);
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation3);
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        long j6 = id;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 102, 0, 0, 0, i10, 0, 0, iValidateSYR2, 0, float2.f785x, float2.f786y, id2, id3, 0.0f, 0.0f, j6, i11, i12, 0, 0, zIsIncSupp);
    }

    public void CHER2K(int i10, int i11, Float2 float2, Allocation allocation, Allocation allocation2, float f, Allocation allocation3) {
        long dummyAlloc;
        long dummyAlloc2;
        validateUplo(i10);
        validateHER2K(Element.F32_2(this.mRS), i11, allocation, allocation2, allocation3);
        int x6 = i11 == 111 ? allocation.getType().getX() : allocation.getType().getY();
        boolean zIsIncSupp = isIncSupp();
        allocation.getID(this.mRS);
        long id = allocation2.getID(this.mRS);
        long id2 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            getDummyAlloc(allocation);
            dummyAlloc = getDummyAlloc(allocation2);
            dummyAlloc2 = getDummyAlloc(allocation3);
        } else {
            dummyAlloc = id;
            dummyAlloc2 = id2;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 139, i11, 0, 0, i10, 0, 0, allocation3.getType().getX(), x6, float2.f785x, float2.f786y, allocation.getID(this.mRS), dummyAlloc, f, 0.0f, dummyAlloc2, 0, 0, 0, 0, zIsIncSupp);
    }

    public void CHERK(int i10, int i11, float f, Allocation allocation, float f6, Allocation allocation2) {
        long dummyAlloc;
        long dummyAlloc2;
        validateUplo(i10);
        validateHERK(Element.F32_2(this.mRS), i11, allocation, allocation2);
        int y6 = i11 == 113 ? allocation.getType().getY() : allocation.getType().getX();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            dummyAlloc = getDummyAlloc(allocation);
            dummyAlloc2 = getDummyAlloc(allocation2);
        } else {
            dummyAlloc = id;
            dummyAlloc2 = id2;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 138, i11, 0, 0, i10, 0, 0, allocation2.getType().getX(), y6, f, 0.0f, dummyAlloc, 0L, f6, 0.0f, dummyAlloc2, 0, 0, 0, 0, zIsIncSupp);
    }

    public void CHPMV(int i10, Float2 float2, Allocation allocation, Allocation allocation2, int i11, Float2 float3, Allocation allocation3, int i12) {
        int iValidateSPR2 = validateSPR2(Element.F32_2(this.mRS), i10, allocation2, i11, allocation3, i12, allocation);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
            id3 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 97, 0, 0, 0, i10, 0, 0, iValidateSPR2, 0, float2.f785x, float2.f786y, id, id2, float3.f785x, float3.f786y, id3, i11, i12, 0, 0, zIsIncSupp);
    }

    public void CHPR(int i10, float f, Allocation allocation, int i11, Allocation allocation2) {
        long j6;
        long dummyAlloc;
        int iValidateSPR = validateSPR(Element.F32_2(this.mRS), i10, allocation, i11, allocation2);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation2.getID(this.mRS);
        long id2 = allocation.getID(this.mRS);
        if (zIsIncSupp) {
            long dummyAlloc2 = getDummyAlloc(allocation2);
            dummyAlloc = getDummyAlloc(allocation);
            j6 = dummyAlloc2;
        } else {
            j6 = id;
            dummyAlloc = id2;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 101, 0, 0, 0, i10, 0, 0, iValidateSPR, 0, f, 0.0f, dummyAlloc, 0L, 0.0f, 0.0f, j6, i11, 0, 0, 0, zIsIncSupp);
    }

    public void CHPR2(int i10, Float2 float2, Allocation allocation, int i11, Allocation allocation2, int i12, Allocation allocation3) {
        int iValidateSPR2 = validateSPR2(Element.F32_2(this.mRS), i10, allocation, i11, allocation2, i12, allocation3);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation3.getID(this.mRS);
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation3);
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        long j6 = id;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 103, 0, 0, 0, i10, 0, 0, iValidateSPR2, 0, float2.f785x, float2.f786y, id2, id3, 0.0f, 0.0f, j6, i11, i12, 0, 0, zIsIncSupp);
    }

    public void CSYMM(int i10, int i11, Float2 float2, Allocation allocation, Allocation allocation2, Float2 float3, Allocation allocation3) {
        validateSide(i10);
        validateUplo(i11);
        if (allocation.getType().getX() != allocation.getType().getY()) {
            throw new RSRuntimeException("Matrix A is not symmetric");
        }
        validateL3(Element.F32_2(this.mRS), 0, 0, i10, allocation, allocation2, allocation3);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
            id3 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 126, 0, 0, i10, i11, 0, allocation3.getType().getY(), allocation3.getType().getX(), 0, float2.f785x, float2.f786y, id, id2, float3.f785x, float3.f786y, id3, 0, 0, 0, 0, zIsIncSupp);
    }

    public void CSYR2K(int i10, int i11, Float2 float2, Allocation allocation, Allocation allocation2, Float2 float3, Allocation allocation3) {
        long j6;
        long dummyAlloc;
        long dummyAlloc2;
        validateUplo(i10);
        validateSYR2K(Element.F32_2(this.mRS), i11, allocation, allocation2, allocation3);
        int y6 = i11 != 111 ? allocation.getType().getY() : allocation.getType().getX();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            long dummyAlloc3 = getDummyAlloc(allocation);
            dummyAlloc = getDummyAlloc(allocation2);
            j6 = dummyAlloc3;
            dummyAlloc2 = getDummyAlloc(allocation3);
        } else {
            j6 = id;
            dummyAlloc = id2;
            dummyAlloc2 = id3;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 128, i11, 0, 0, i10, 0, 0, allocation3.getType().getX(), y6, float2.f785x, float2.f786y, j6, dummyAlloc, float3.f785x, float3.f786y, dummyAlloc2, 0, 0, 0, 0, zIsIncSupp);
    }

    public void CSYRK(int i10, int i11, Float2 float2, Allocation allocation, Float2 float3, Allocation allocation2) {
        validateTranspose(i11);
        validateUplo(i10);
        validateL3(Element.F32_2(this.mRS), i11, 0, 0, allocation, null, allocation2);
        int y6 = i11 != 111 ? allocation.getType().getY() : allocation.getType().getX();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 127, i11, 0, 0, i10, 0, 0, allocation2.getType().getX(), y6, float2.f785x, float2.f786y, id, 0L, float3.f785x, float3.f786y, allocation2.getID(this.mRS), 0, 0, 0, 0, zIsIncSupp);
    }

    public void CTBMV(int i10, int i11, int i12, int i13, Allocation allocation, Allocation allocation2, int i14) {
        if (i13 < 0) {
            throw new RSRuntimeException("K must be greater than or equal to 0");
        }
        validateTRMV(Element.F32_2(this.mRS), i10, i11, i12, allocation, allocation2, i14);
        int y6 = allocation.getType().getY();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 66, i11, 0, 0, i10, i12, 0, y6, i13, 0.0f, 0.0f, id, id2, 0.0f, 0.0f, 0L, i14, 0, 0, 0, zIsIncSupp);
    }

    public void CTBSV(int i10, int i11, int i12, int i13, Allocation allocation, Allocation allocation2, int i14) {
        validateTRMV(Element.F32_2(this.mRS), i10, i11, i12, allocation, allocation2, i14);
        int y6 = allocation.getType().getY();
        if (i13 < 0) {
            throw new RSRuntimeException("Number of diagonals must be positive");
        }
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 69, i11, 0, 0, i10, i12, 0, y6, i13, 0.0f, 0.0f, id, id2, 0.0f, 0.0f, 0L, i14, 0, 0, 0, zIsIncSupp);
    }

    public void CTPMV(int i10, int i11, int i12, Allocation allocation, Allocation allocation2, int i13) {
        int iValidateTPMV = validateTPMV(Element.F32_2(this.mRS), i10, i11, i12, allocation, allocation2, i13);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 67, i11, 0, 0, i10, i12, 0, iValidateTPMV, 0, 0.0f, 0.0f, id, id2, 0.0f, 0.0f, 0L, i13, 0, 0, 0, zIsIncSupp);
    }

    public void CTPSV(int i10, int i11, int i12, Allocation allocation, Allocation allocation2, int i13) {
        int iValidateTPMV = validateTPMV(Element.F32_2(this.mRS), i10, i11, i12, allocation, allocation2, i13);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 70, i11, 0, 0, i10, i12, 0, iValidateTPMV, 0, 0.0f, 0.0f, id, id2, 0.0f, 0.0f, 0L, i13, 0, 0, 0, zIsIncSupp);
    }

    public void CTRMM(int i10, int i11, int i12, int i13, Float2 float2, Allocation allocation, Allocation allocation2) {
        validateUplo(i11);
        validateDiag(i13);
        validateTRMM(Element.F32_2(this.mRS), i10, i12, allocation, allocation2);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        long j6 = id2;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 129, i12, 0, i10, i11, i13, allocation2.getType().getY(), allocation2.getType().getX(), 0, float2.f785x, float2.f786y, id, j6, 0.0f, 0.0f, 0L, 0, 0, 0, 0, zIsIncSupp);
    }

    public void CTRMV(int i10, int i11, int i12, Allocation allocation, Allocation allocation2, int i13) {
        validateTRMV(Element.F32_2(this.mRS), i10, i11, i12, allocation, allocation2, i13);
        int y6 = allocation.getType().getY();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 65, i11, 0, 0, i10, i12, 0, y6, 0, 0.0f, 0.0f, id, id2, 0.0f, 0.0f, 0L, i13, 0, 0, 0, zIsIncSupp);
    }

    public void CTRSM(int i10, int i11, int i12, int i13, Float2 float2, Allocation allocation, Allocation allocation2) {
        validateUplo(i11);
        validateDiag(i13);
        validateTRSM(Element.F32_2(this.mRS), i10, i12, allocation, allocation2);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        long j6 = id2;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 130, i12, 0, i10, i11, i13, allocation2.getType().getY(), allocation2.getType().getX(), 0, float2.f785x, float2.f786y, id, j6, 0.0f, 0.0f, 0L, 0, 0, 0, 0, zIsIncSupp);
    }

    public void CTRSV(int i10, int i11, int i12, Allocation allocation, Allocation allocation2, int i13) {
        validateTRMV(Element.F32_2(this.mRS), i10, i11, i12, allocation, allocation2, i13);
        int y6 = allocation.getType().getY();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 68, i11, 0, 0, i10, i12, 0, y6, 0, 0.0f, 0.0f, id, id2, 0.0f, 0.0f, 0L, i13, 0, 0, 0, zIsIncSupp);
    }

    public void DGBMV(int i10, int i11, int i12, double d, Allocation allocation, Allocation allocation2, int i13, double d2, Allocation allocation3, int i14) {
        validateGEMV(Element.F64(this.mRS), i10, allocation, allocation2, i13, allocation3, i14);
        if (i11 < 0 || i12 < 0) {
            throw new RSRuntimeException("KL and KU must be greater than or equal to 0");
        }
        int y6 = allocation.getType().getY();
        int x6 = allocation.getType().getX();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
            id3 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 56, i10, 0, 0, 0, 0, y6, x6, 0, d, id, id2, d2, id3, i13, i14, i11, i12, zIsIncSupp);
    }

    public void DGEMM(int i10, int i11, double d, Allocation allocation, Allocation allocation2, double d2, Allocation allocation3) {
        int y6;
        int x6;
        long dummyAlloc;
        long dummyAlloc2;
        long dummyAlloc3;
        validateTranspose(i10);
        validateTranspose(i11);
        validateL3(Element.F64(this.mRS), i10, i11, 0, allocation, allocation2, allocation3);
        if (i10 != 111) {
            y6 = allocation.getType().getX();
            x6 = allocation.getType().getY();
        } else {
            y6 = allocation.getType().getY();
            x6 = allocation.getType().getX();
        }
        int i12 = y6;
        int i13 = x6;
        int y10 = i11 != 111 ? allocation2.getType().getY() : allocation2.getType().getX();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            dummyAlloc = getDummyAlloc(allocation);
            dummyAlloc2 = getDummyAlloc(allocation2);
            dummyAlloc3 = getDummyAlloc(allocation3);
        } else {
            dummyAlloc = id;
            dummyAlloc2 = id2;
            dummyAlloc3 = id3;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 119, i10, i11, 0, 0, 0, i12, y10, i13, d, dummyAlloc, dummyAlloc2, d2, dummyAlloc3, 0, 0, 0, 0, zIsIncSupp);
    }

    public void DGEMV(int i10, double d, Allocation allocation, Allocation allocation2, int i11, double d2, Allocation allocation3, int i12) {
        validateGEMV(Element.F64(this.mRS), i10, allocation, allocation2, i11, allocation3, i12);
        int y6 = allocation.getType().getY();
        int x6 = allocation.getType().getX();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
            id3 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 55, i10, 0, 0, 0, 0, y6, x6, 0, d, id, id2, d2, id3, i11, i12, 0, 0, zIsIncSupp);
    }

    public void DGER(double d, Allocation allocation, int i10, Allocation allocation2, int i11, Allocation allocation3) {
        int y6 = allocation3.getType().getY();
        int x6 = allocation3.getType().getX();
        validateGER(Element.F64(this.mRS), allocation, i10, allocation2, i11, allocation3);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation3.getID(this.mRS);
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation3);
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        long j6 = id;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 90, 0, 0, 0, 0, 0, y6, x6, 0, d, id2, id3, a.DEFAULT_VALUE_FOR_DOUBLE, j6, i10, i11, 0, 0, zIsIncSupp);
    }

    public void DSBMV(int i10, int i11, double d, Allocation allocation, Allocation allocation2, int i12, double d2, Allocation allocation3, int i13) {
        if (i11 < 0) {
            throw new RSRuntimeException("K must be greater than or equal to 0");
        }
        int iValidateSYMV = validateSYMV(Element.F64(this.mRS), i10, allocation, allocation2, allocation3, i12, i13);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
            id3 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 88, 0, 0, 0, i10, 0, 0, iValidateSYMV, i11, d, id, id2, d2, id3, i12, i13, 0, 0, zIsIncSupp);
    }

    public void DSPMV(int i10, double d, Allocation allocation, Allocation allocation2, int i11, double d2, Allocation allocation3, int i12) {
        int iValidateSPMV = validateSPMV(Element.F64(this.mRS), i10, allocation, allocation2, i11, allocation3, i12);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
            id3 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 89, 0, 0, 0, i10, 0, 0, iValidateSPMV, 0, d, id, id2, d2, id3, i11, i12, 0, 0, zIsIncSupp);
    }

    public void DSPR(int i10, double d, Allocation allocation, int i11, Allocation allocation2) {
        long j6;
        long dummyAlloc;
        int iValidateSPR = validateSPR(Element.F64(this.mRS), i10, allocation, i11, allocation2);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation2.getID(this.mRS);
        long id2 = allocation.getID(this.mRS);
        if (zIsIncSupp) {
            long dummyAlloc2 = getDummyAlloc(allocation2);
            dummyAlloc = getDummyAlloc(allocation);
            j6 = dummyAlloc2;
        } else {
            j6 = id;
            dummyAlloc = id2;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 92, 0, 0, 0, i10, 0, 0, iValidateSPR, 0, d, dummyAlloc, j6, a.DEFAULT_VALUE_FOR_DOUBLE, 0L, i11, 0, 0, 0, zIsIncSupp);
    }

    public void DSPR2(int i10, double d, Allocation allocation, int i11, Allocation allocation2, int i12, Allocation allocation3) {
        int iValidateSPR2 = validateSPR2(Element.F64(this.mRS), i10, allocation, i11, allocation2, i12, allocation3);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation3.getID(this.mRS);
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation3);
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        long j6 = id;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 94, 0, 0, 0, i10, 0, 0, iValidateSPR2, 0, d, id2, id3, a.DEFAULT_VALUE_FOR_DOUBLE, j6, i11, i12, 0, 0, zIsIncSupp);
    }

    public void DSYMM(int i10, int i11, double d, Allocation allocation, Allocation allocation2, double d2, Allocation allocation3) {
        validateSide(i10);
        validateUplo(i11);
        if (allocation.getType().getX() != allocation.getType().getY()) {
            throw new RSRuntimeException("Matrix A is not symmetric");
        }
        validateL3(Element.F64(this.mRS), 0, 0, i10, allocation, allocation2, allocation3);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
            id3 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 120, 0, 0, i10, i11, 0, allocation3.getType().getY(), allocation3.getType().getX(), 0, d, id, id2, d2, id3, 0, 0, 0, 0, zIsIncSupp);
    }

    public void DSYMV(int i10, double d, Allocation allocation, Allocation allocation2, int i11, double d2, Allocation allocation3, int i12) {
        int iValidateSYMV = validateSYMV(Element.F64(this.mRS), i10, allocation, allocation2, allocation3, i11, i12);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
            id3 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 87, 0, 0, 0, i10, 0, 0, iValidateSYMV, 0, d, id, id2, d2, id3, i11, i12, 0, 0, zIsIncSupp);
    }

    public void DSYR(int i10, double d, Allocation allocation, int i11, Allocation allocation2) {
        long j6;
        long dummyAlloc;
        int iValidateSYR = validateSYR(Element.F64(this.mRS), i10, allocation, i11, allocation2);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation2.getID(this.mRS);
        long id2 = allocation.getID(this.mRS);
        if (zIsIncSupp) {
            long dummyAlloc2 = getDummyAlloc(allocation2);
            dummyAlloc = getDummyAlloc(allocation);
            j6 = dummyAlloc2;
        } else {
            j6 = id;
            dummyAlloc = id2;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 91, 0, 0, 0, i10, 0, 0, iValidateSYR, 0, d, dummyAlloc, j6, a.DEFAULT_VALUE_FOR_DOUBLE, 0L, i11, 0, 0, 0, zIsIncSupp);
    }

    public void DSYR2(int i10, double d, Allocation allocation, int i11, Allocation allocation2, int i12, Allocation allocation3) {
        int iValidateSYR2 = validateSYR2(Element.F64(this.mRS), i10, allocation, i11, allocation2, i12, allocation3);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation3.getID(this.mRS);
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation3);
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        long j6 = id;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 93, 0, 0, 0, i10, 0, 0, iValidateSYR2, 0, d, id2, id3, a.DEFAULT_VALUE_FOR_DOUBLE, j6, i11, i12, 0, 0, zIsIncSupp);
    }

    public void DSYR2K(int i10, int i11, double d, Allocation allocation, Allocation allocation2, double d2, Allocation allocation3) {
        long j6;
        long dummyAlloc;
        long dummyAlloc2;
        validateUplo(i10);
        validateSYR2K(Element.F64(this.mRS), i11, allocation, allocation2, allocation3);
        int y6 = i11 != 111 ? allocation.getType().getY() : allocation.getType().getX();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            long dummyAlloc3 = getDummyAlloc(allocation);
            dummyAlloc = getDummyAlloc(allocation2);
            j6 = dummyAlloc3;
            dummyAlloc2 = getDummyAlloc(allocation3);
        } else {
            j6 = id;
            dummyAlloc = id2;
            dummyAlloc2 = id3;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 122, i11, 0, 0, i10, 0, 0, allocation3.getType().getX(), y6, d, j6, dummyAlloc, d2, dummyAlloc2, 0, 0, 0, 0, zIsIncSupp);
    }

    public void DSYRK(int i10, int i11, double d, Allocation allocation, double d2, Allocation allocation2) {
        validateTranspose(i11);
        validateUplo(i10);
        validateL3(Element.F64(this.mRS), i11, 0, 0, allocation, null, allocation2);
        int y6 = i11 != 111 ? allocation.getType().getY() : allocation.getType().getX();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 121, i11, 0, 0, i10, 0, 0, allocation2.getType().getX(), y6, d, id, 0L, d2, id2, 0, 0, 0, 0, zIsIncSupp);
    }

    public void DTBMV(int i10, int i11, int i12, int i13, Allocation allocation, Allocation allocation2, int i14) {
        if (i13 < 0) {
            throw new RSRuntimeException("K must be greater than or equal to 0");
        }
        validateTRMV(Element.F64(this.mRS), i10, i11, i12, allocation, allocation2, i14);
        int y6 = allocation.getType().getY();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 58, i11, 0, 0, i10, i12, 0, y6, i13, a.DEFAULT_VALUE_FOR_DOUBLE, id, id2, a.DEFAULT_VALUE_FOR_DOUBLE, 0L, i14, 0, 0, 0, zIsIncSupp);
    }

    public void DTBSV(int i10, int i11, int i12, int i13, Allocation allocation, Allocation allocation2, int i14) {
        validateTRMV(Element.F64(this.mRS), i10, i11, i12, allocation, allocation2, i14);
        int y6 = allocation.getType().getY();
        if (i13 < 0) {
            throw new RSRuntimeException("Number of diagonals must be positive");
        }
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 61, i11, 0, 0, i10, i12, 0, y6, i13, a.DEFAULT_VALUE_FOR_DOUBLE, id, id2, a.DEFAULT_VALUE_FOR_DOUBLE, 0L, i14, 0, 0, 0, zIsIncSupp);
    }

    public void DTPMV(int i10, int i11, int i12, Allocation allocation, Allocation allocation2, int i13) {
        int iValidateTPMV = validateTPMV(Element.F64(this.mRS), i10, i11, i12, allocation, allocation2, i13);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 59, i11, 0, 0, i10, i12, 0, iValidateTPMV, 0, a.DEFAULT_VALUE_FOR_DOUBLE, id, id2, a.DEFAULT_VALUE_FOR_DOUBLE, 0L, i13, 0, 0, 0, zIsIncSupp);
    }

    public void DTPSV(int i10, int i11, int i12, Allocation allocation, Allocation allocation2, int i13) {
        int iValidateTPMV = validateTPMV(Element.F64(this.mRS), i10, i11, i12, allocation, allocation2, i13);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 62, i11, 0, 0, i10, i12, 0, iValidateTPMV, 0, a.DEFAULT_VALUE_FOR_DOUBLE, id, id2, a.DEFAULT_VALUE_FOR_DOUBLE, 0L, i13, 0, 0, 0, zIsIncSupp);
    }

    public void DTRMM(int i10, int i11, int i12, int i13, double d, Allocation allocation, Allocation allocation2) {
        validateUplo(i11);
        validateDiag(i13);
        validateTRMM(Element.F64(this.mRS), i10, i12, allocation, allocation2);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        long j6 = id2;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 123, i12, 0, i10, i11, i13, allocation2.getType().getY(), allocation2.getType().getX(), 0, d, id, j6, a.DEFAULT_VALUE_FOR_DOUBLE, 0L, 0, 0, 0, 0, zIsIncSupp);
    }

    public void DTRMV(int i10, int i11, int i12, Allocation allocation, Allocation allocation2, int i13) {
        validateTRMV(Element.F64(this.mRS), i10, i11, i12, allocation, allocation2, i13);
        int y6 = allocation.getType().getY();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 57, i11, 0, 0, i10, i12, 0, y6, 0, a.DEFAULT_VALUE_FOR_DOUBLE, id, id2, a.DEFAULT_VALUE_FOR_DOUBLE, 0L, i13, 0, 0, 0, zIsIncSupp);
    }

    public void DTRSM(int i10, int i11, int i12, int i13, double d, Allocation allocation, Allocation allocation2) {
        validateUplo(i11);
        validateDiag(i13);
        validateTRSM(Element.F64(this.mRS), i10, i12, allocation, allocation2);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        long j6 = id2;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 124, i12, 0, i10, i11, i13, allocation2.getType().getY(), allocation2.getType().getX(), 0, d, id, j6, a.DEFAULT_VALUE_FOR_DOUBLE, 0L, 0, 0, 0, 0, zIsIncSupp);
    }

    public void DTRSV(int i10, int i11, int i12, Allocation allocation, Allocation allocation2, int i13) {
        validateTRMV(Element.F64(this.mRS), i10, i11, i12, allocation, allocation2, i13);
        int y6 = allocation.getType().getY();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 60, i11, 0, 0, i10, i12, 0, y6, 0, a.DEFAULT_VALUE_FOR_DOUBLE, id, id2, a.DEFAULT_VALUE_FOR_DOUBLE, 0L, i13, 0, 0, 0, zIsIncSupp);
    }

    public void SGBMV(int i10, int i11, int i12, float f, Allocation allocation, Allocation allocation2, int i13, float f6, Allocation allocation3, int i14) {
        validateGEMV(Element.F32(this.mRS), i10, allocation, allocation2, i13, allocation3, i14);
        if (i11 < 0 || i12 < 0) {
            throw new RSRuntimeException("KL and KU must be greater than or equal to 0");
        }
        int y6 = allocation.getType().getY();
        int x6 = allocation.getType().getX();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
            id3 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 48, i10, 0, 0, 0, 0, y6, x6, 0, f, id, id2, f6, id3, i13, i14, i11, i12, zIsIncSupp);
    }

    public void SGEMM(int i10, int i11, float f, Allocation allocation, Allocation allocation2, float f6, Allocation allocation3) {
        int y6;
        int x6;
        long dummyAlloc;
        long dummyAlloc2;
        long dummyAlloc3;
        validateTranspose(i10);
        validateTranspose(i11);
        validateL3(Element.F32(this.mRS), i10, i11, 0, allocation, allocation2, allocation3);
        if (i10 != 111) {
            y6 = allocation.getType().getX();
            x6 = allocation.getType().getY();
        } else {
            y6 = allocation.getType().getY();
            x6 = allocation.getType().getX();
        }
        int i12 = y6;
        int i13 = x6;
        int y10 = i11 != 111 ? allocation2.getType().getY() : allocation2.getType().getX();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            dummyAlloc3 = getDummyAlloc(allocation);
            dummyAlloc = getDummyAlloc(allocation2);
            dummyAlloc2 = getDummyAlloc(allocation3);
        } else {
            dummyAlloc = id2;
            dummyAlloc2 = id3;
            dummyAlloc3 = id;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 113, i10, i11, 0, 0, 0, i12, y10, i13, f, dummyAlloc3, dummyAlloc, f6, dummyAlloc2, 0, 0, 0, 0, zIsIncSupp);
    }

    public void SGEMV(int i10, float f, Allocation allocation, Allocation allocation2, int i11, float f6, Allocation allocation3, int i12) {
        validateGEMV(Element.F32(this.mRS), i10, allocation, allocation2, i11, allocation3, i12);
        int y6 = allocation.getType().getY();
        int x6 = allocation.getType().getX();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
            id3 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 47, i10, 0, 0, 0, 0, y6, x6, 0, f, id, id2, f6, id3, i11, i12, 0, 0, zIsIncSupp);
    }

    public void SGER(float f, Allocation allocation, int i10, Allocation allocation2, int i11, Allocation allocation3) {
        int y6 = allocation3.getType().getY();
        int x6 = allocation3.getType().getX();
        validateGER(Element.F32(this.mRS), allocation, i10, allocation2, i11, allocation3);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation3.getID(this.mRS);
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation3);
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        long j6 = id;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 82, 0, 0, 0, 0, 0, y6, x6, 0, f, id2, id3, 0.0f, j6, i10, i11, 0, 0, zIsIncSupp);
    }

    public void SSBMV(int i10, int i11, float f, Allocation allocation, Allocation allocation2, int i12, float f6, Allocation allocation3, int i13) {
        if (i11 < 0) {
            throw new RSRuntimeException("K must be greater than or equal to 0");
        }
        int iValidateSYMV = validateSYMV(Element.F32(this.mRS), i10, allocation, allocation2, allocation3, i12, i13);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
            id3 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 80, 0, 0, 0, i10, 0, 0, iValidateSYMV, i11, f, id, id2, f6, id3, i12, i13, 0, 0, zIsIncSupp);
    }

    public void SSPMV(int i10, float f, Allocation allocation, Allocation allocation2, int i11, float f6, Allocation allocation3, int i12) {
        int iValidateSPMV = validateSPMV(Element.F32(this.mRS), i10, allocation, allocation2, i11, allocation3, i12);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
            id3 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 81, 0, 0, 0, i10, 0, 0, iValidateSPMV, 0, f, id, id2, f6, id3, i11, i12, 0, 0, zIsIncSupp);
    }

    public void SSPR(int i10, float f, Allocation allocation, int i11, Allocation allocation2) {
        long j6;
        long dummyAlloc;
        int iValidateSPR = validateSPR(Element.F32(this.mRS), i10, allocation, i11, allocation2);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation2.getID(this.mRS);
        long id2 = allocation.getID(this.mRS);
        if (zIsIncSupp) {
            long dummyAlloc2 = getDummyAlloc(allocation2);
            dummyAlloc = getDummyAlloc(allocation);
            j6 = dummyAlloc2;
        } else {
            j6 = id;
            dummyAlloc = id2;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 84, 0, 0, 0, i10, 0, 0, iValidateSPR, 0, f, dummyAlloc, j6, 0.0f, 0L, i11, 0, 0, 0, zIsIncSupp);
    }

    public void SSPR2(int i10, float f, Allocation allocation, int i11, Allocation allocation2, int i12, Allocation allocation3) {
        int iValidateSPR2 = validateSPR2(Element.F32(this.mRS), i10, allocation, i11, allocation2, i12, allocation3);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation3.getID(this.mRS);
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation3);
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        long j6 = id;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 86, 0, 0, 0, i10, 0, 0, iValidateSPR2, 0, f, id2, id3, 0.0f, j6, i11, i12, 0, 0, zIsIncSupp);
    }

    public void SSYMM(int i10, int i11, float f, Allocation allocation, Allocation allocation2, float f6, Allocation allocation3) {
        validateSide(i10);
        validateUplo(i11);
        if (allocation.getType().getX() != allocation.getType().getY()) {
            throw new RSRuntimeException("Matrix A is not symmetric");
        }
        validateL3(Element.F32(this.mRS), 0, 0, i10, allocation, allocation2, allocation3);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
            id3 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 114, 0, 0, i10, i11, 0, allocation3.getType().getY(), allocation3.getType().getX(), 0, f, id, id2, f6, id3, 0, 0, 0, 0, zIsIncSupp);
    }

    public void SSYMV(int i10, float f, Allocation allocation, Allocation allocation2, int i11, float f6, Allocation allocation3, int i12) {
        int iValidateSYMV = validateSYMV(Element.F32(this.mRS), i10, allocation, allocation2, allocation3, i11, i12);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
            id3 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 79, 0, 0, 0, i10, 0, 0, iValidateSYMV, 0, f, id, id2, f6, id3, i11, i12, 0, 0, zIsIncSupp);
    }

    public void SSYR(int i10, float f, Allocation allocation, int i11, Allocation allocation2) {
        long j6;
        long dummyAlloc;
        int iValidateSYR = validateSYR(Element.F32(this.mRS), i10, allocation, i11, allocation2);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation2.getID(this.mRS);
        long id2 = allocation.getID(this.mRS);
        if (zIsIncSupp) {
            long dummyAlloc2 = getDummyAlloc(allocation2);
            dummyAlloc = getDummyAlloc(allocation);
            j6 = dummyAlloc2;
        } else {
            j6 = id;
            dummyAlloc = id2;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 83, 0, 0, 0, i10, 0, 0, iValidateSYR, 0, f, dummyAlloc, j6, 0.0f, 0L, i11, 0, 0, 0, zIsIncSupp);
    }

    public void SSYR2(int i10, float f, Allocation allocation, int i11, Allocation allocation2, int i12, Allocation allocation3) {
        int iValidateSYR2 = validateSYR2(Element.F32(this.mRS), i10, allocation, i11, allocation2, i12, allocation3);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation3.getID(this.mRS);
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation3);
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        long j6 = id;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 85, 0, 0, 0, i10, 0, 0, iValidateSYR2, 0, f, id2, id3, 0.0f, j6, i11, i12, 0, 0, zIsIncSupp);
    }

    public void SSYR2K(int i10, int i11, float f, Allocation allocation, Allocation allocation2, float f6, Allocation allocation3) {
        long j6;
        long dummyAlloc;
        long dummyAlloc2;
        validateUplo(i10);
        validateSYR2K(Element.F32(this.mRS), i11, allocation, allocation2, allocation3);
        int y6 = i11 != 111 ? allocation.getType().getY() : allocation.getType().getX();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            long dummyAlloc3 = getDummyAlloc(allocation);
            dummyAlloc = getDummyAlloc(allocation2);
            j6 = dummyAlloc3;
            dummyAlloc2 = getDummyAlloc(allocation3);
        } else {
            j6 = id;
            dummyAlloc = id2;
            dummyAlloc2 = id3;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 116, i11, 0, 0, i10, 0, 0, allocation3.getType().getX(), y6, f, j6, dummyAlloc, f6, dummyAlloc2, 0, 0, 0, 0, zIsIncSupp);
    }

    public void SSYRK(int i10, int i11, float f, Allocation allocation, float f6, Allocation allocation2) {
        validateTranspose(i11);
        validateUplo(i10);
        validateL3(Element.F32(this.mRS), i11, 0, 0, allocation, null, allocation2);
        int y6 = i11 != 111 ? allocation.getType().getY() : allocation.getType().getX();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 115, i11, 0, 0, i10, 0, 0, allocation2.getType().getX(), y6, f, id, 0L, f6, id2, 0, 0, 0, 0, zIsIncSupp);
    }

    public void STBMV(int i10, int i11, int i12, int i13, Allocation allocation, Allocation allocation2, int i14) {
        if (i13 < 0) {
            throw new RSRuntimeException("K must be greater than or equal to 0");
        }
        validateTRMV(Element.F32(this.mRS), i10, i11, i12, allocation, allocation2, i14);
        int y6 = allocation.getType().getY();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 50, i11, 0, 0, i10, i12, 0, y6, i13, 0.0f, id, id2, 0.0f, 0L, i14, 0, 0, 0, zIsIncSupp);
    }

    public void STBSV(int i10, int i11, int i12, int i13, Allocation allocation, Allocation allocation2, int i14) {
        validateTRMV(Element.F32(this.mRS), i10, i11, i12, allocation, allocation2, i14);
        int y6 = allocation.getType().getY();
        if (i13 < 0) {
            throw new RSRuntimeException("Number of diagonals must be positive");
        }
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 53, i11, 0, 0, i10, i12, 0, y6, i13, 0.0f, id, id2, 0.0f, 0L, i14, 0, 0, 0, zIsIncSupp);
    }

    public void STPMV(int i10, int i11, int i12, Allocation allocation, Allocation allocation2, int i13) {
        int iValidateTPMV = validateTPMV(Element.F32(this.mRS), i10, i11, i12, allocation, allocation2, i13);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 51, i11, 0, 0, i10, i12, 0, iValidateTPMV, 0, 0.0f, id, id2, 0.0f, 0L, i13, 0, 0, 0, zIsIncSupp);
    }

    public void STPSV(int i10, int i11, int i12, Allocation allocation, Allocation allocation2, int i13) {
        int iValidateTPMV = validateTPMV(Element.F32(this.mRS), i10, i11, i12, allocation, allocation2, i13);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 54, i11, 0, 0, i10, i12, 0, iValidateTPMV, 0, 0.0f, id, id2, 0.0f, 0L, i13, 0, 0, 0, zIsIncSupp);
    }

    public void STRMM(int i10, int i11, int i12, int i13, float f, Allocation allocation, Allocation allocation2) {
        validateUplo(i11);
        validateDiag(i13);
        validateTRMM(Element.F32(this.mRS), i10, i12, allocation, allocation2);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        long j6 = id2;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 117, i12, 0, i10, i11, i13, allocation2.getType().getY(), allocation2.getType().getX(), 0, f, id, j6, 0.0f, 0L, 0, 0, 0, 0, zIsIncSupp);
    }

    public void STRMV(int i10, int i11, int i12, Allocation allocation, Allocation allocation2, int i13) {
        validateTRMV(Element.F32(this.mRS), i10, i11, i12, allocation, allocation2, i13);
        int y6 = allocation.getType().getY();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 49, i11, 0, 0, i10, i12, 0, y6, 0, 0.0f, id, id2, 0.0f, 0L, i13, 0, 0, 0, zIsIncSupp);
    }

    public void STRSM(int i10, int i11, int i12, int i13, float f, Allocation allocation, Allocation allocation2) {
        validateUplo(i11);
        validateDiag(i13);
        validateTRSM(Element.F32(this.mRS), i10, i12, allocation, allocation2);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        long j6 = id2;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 118, i12, 0, i10, i11, i13, allocation2.getType().getY(), allocation2.getType().getX(), 0, f, id, j6, 0.0f, 0L, 0, 0, 0, 0, zIsIncSupp);
    }

    public void STRSV(int i10, int i11, int i12, Allocation allocation, Allocation allocation2, int i13) {
        validateTRMV(Element.F32(this.mRS), i10, i11, i12, allocation, allocation2, i13);
        int y6 = allocation.getType().getY();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 52, i11, 0, 0, i10, i12, 0, y6, 0, 0.0f, id, id2, 0.0f, 0L, i13, 0, 0, 0, zIsIncSupp);
    }

    public void ZGBMV(int i10, int i11, int i12, Double2 double2, Allocation allocation, Allocation allocation2, int i13, Double2 double3, Allocation allocation3, int i14) {
        validateGEMV(Element.F64_2(this.mRS), i10, allocation, allocation2, i13, allocation3, i14);
        if (i11 < 0 || i12 < 0) {
            throw new RSRuntimeException("KL and KU must be greater than or equal to 0");
        }
        int y6 = allocation.getType().getY();
        int x6 = allocation.getType().getX();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
            id3 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 72, i10, 0, 0, 0, 0, y6, x6, 0, double2.f776x, double2.f777y, id, id2, double3.f776x, double3.f777y, id3, i13, i14, i11, i12, zIsIncSupp);
    }

    public void ZGEMM(int i10, int i11, Double2 double2, Allocation allocation, Allocation allocation2, Double2 double3, Allocation allocation3) {
        int y6;
        int x6;
        long dummyAlloc;
        long dummyAlloc2;
        long dummyAlloc3;
        validateTranspose(i10);
        validateTranspose(i11);
        validateL3(Element.F64_2(this.mRS), i10, i11, 0, allocation, allocation2, allocation3);
        if (i10 != 111) {
            y6 = allocation.getType().getX();
            x6 = allocation.getType().getY();
        } else {
            y6 = allocation.getType().getY();
            x6 = allocation.getType().getX();
        }
        int i12 = y6;
        int i13 = x6;
        int y10 = i11 != 111 ? allocation2.getType().getY() : allocation2.getType().getX();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            dummyAlloc = getDummyAlloc(allocation);
            dummyAlloc2 = getDummyAlloc(allocation2);
            dummyAlloc3 = getDummyAlloc(allocation3);
        } else {
            dummyAlloc = id;
            dummyAlloc2 = id2;
            dummyAlloc3 = id3;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 131, i10, i11, 0, 0, 0, i12, y10, i13, double2.f776x, double2.f777y, dummyAlloc, dummyAlloc2, double3.f776x, double3.f777y, dummyAlloc3, 0, 0, 0, 0, zIsIncSupp);
    }

    public void ZGEMV(int i10, Double2 double2, Allocation allocation, Allocation allocation2, int i11, Double2 double3, Allocation allocation3, int i12) {
        validateGEMV(Element.F64_2(this.mRS), i10, allocation, allocation2, i11, allocation3, i12);
        int y6 = allocation.getType().getY();
        int x6 = allocation.getType().getX();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
            id3 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 71, i10, 0, 0, 0, 0, y6, x6, 0, double2.f776x, double2.f777y, id, id2, double3.f776x, double3.f777y, id3, i11, i12, 0, 0, zIsIncSupp);
    }

    public void ZGERC(Double2 double2, Allocation allocation, int i10, Allocation allocation2, int i11, Allocation allocation3) {
        validateGERU(Element.F64_2(this.mRS), allocation, i10, allocation2, i11, allocation3);
        int y6 = allocation3.getType().getY();
        int x6 = allocation3.getType().getX();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation3.getID(this.mRS);
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation3);
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        long j6 = id;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 108, 0, 0, 0, 0, 0, y6, x6, 0, double2.f776x, double2.f777y, id2, id3, a.DEFAULT_VALUE_FOR_DOUBLE, a.DEFAULT_VALUE_FOR_DOUBLE, j6, i10, i11, 0, 0, zIsIncSupp);
    }

    public void ZGERU(Double2 double2, Allocation allocation, int i10, Allocation allocation2, int i11, Allocation allocation3) {
        validateGERU(Element.F64_2(this.mRS), allocation, i10, allocation2, i11, allocation3);
        int y6 = allocation3.getType().getY();
        int x6 = allocation3.getType().getX();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation3.getID(this.mRS);
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation3);
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        long j6 = id;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 107, 0, 0, 0, 0, 0, y6, x6, 0, double2.f776x, double2.f777y, id2, id3, a.DEFAULT_VALUE_FOR_DOUBLE, a.DEFAULT_VALUE_FOR_DOUBLE, j6, i10, i11, 0, 0, zIsIncSupp);
    }

    public void ZHBMV(int i10, int i11, Double2 double2, Allocation allocation, Allocation allocation2, int i12, Double2 double3, Allocation allocation3, int i13) {
        int iValidateSYR2 = validateSYR2(Element.F64_2(this.mRS), i10, allocation2, i12, allocation3, i13, allocation);
        if (i11 < 0) {
            throw new RSRuntimeException("K must be 0 or greater for HBMV");
        }
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
            id3 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 105, 0, 0, 0, i10, 0, 0, iValidateSYR2, i11, double2.f776x, double2.f777y, id, id2, double3.f776x, double3.f777y, id3, i12, i13, 0, 0, zIsIncSupp);
    }

    public void ZHEMM(int i10, int i11, Double2 double2, Allocation allocation, Allocation allocation2, Double2 double3, Allocation allocation3) {
        long j6;
        long dummyAlloc;
        long dummyAlloc2;
        validateUplo(i11);
        validateHEMM(Element.F64_2(this.mRS), i10, allocation, allocation2, allocation3);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            long dummyAlloc3 = getDummyAlloc(allocation);
            dummyAlloc = getDummyAlloc(allocation2);
            j6 = dummyAlloc3;
            dummyAlloc2 = getDummyAlloc(allocation3);
        } else {
            j6 = id;
            dummyAlloc = id2;
            dummyAlloc2 = id3;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), RsBlas_zhemm, 0, 0, i10, i11, 0, allocation3.getType().getY(), allocation3.getType().getX(), 0, double2.f776x, double2.f777y, j6, dummyAlloc, double3.f776x, double3.f777y, dummyAlloc2, 0, 0, 0, 0, zIsIncSupp);
    }

    public void ZHEMV(int i10, Double2 double2, Allocation allocation, Allocation allocation2, int i11, Double2 double3, Allocation allocation3, int i12) {
        int iValidateSYR2 = validateSYR2(Element.F64_2(this.mRS), i10, allocation2, i11, allocation3, i12, allocation);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
            id3 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 104, 0, 0, 0, i10, 0, 0, iValidateSYR2, 0, double2.f776x, double2.f777y, id, id2, double3.f776x, double3.f777y, id3, i11, i12, 0, 0, zIsIncSupp);
    }

    public void ZHER(int i10, double d, Allocation allocation, int i11, Allocation allocation2) {
        long j6;
        long dummyAlloc;
        int iValidateSYR = validateSYR(Element.F64_2(this.mRS), i10, allocation, i11, allocation2);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation2.getID(this.mRS);
        long id2 = allocation.getID(this.mRS);
        if (zIsIncSupp) {
            long dummyAlloc2 = getDummyAlloc(allocation2);
            dummyAlloc = getDummyAlloc(allocation);
            j6 = dummyAlloc2;
        } else {
            j6 = id;
            dummyAlloc = id2;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 109, 0, 0, 0, i10, 0, 0, iValidateSYR, 0, d, a.DEFAULT_VALUE_FOR_DOUBLE, dummyAlloc, 0L, a.DEFAULT_VALUE_FOR_DOUBLE, a.DEFAULT_VALUE_FOR_DOUBLE, j6, i11, 0, 0, 0, zIsIncSupp);
    }

    public void ZHER2(int i10, Double2 double2, Allocation allocation, int i11, Allocation allocation2, int i12, Allocation allocation3) {
        int iValidateSYR2 = validateSYR2(Element.F64_2(this.mRS), i10, allocation, i11, allocation2, i12, allocation3);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation3.getID(this.mRS);
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation3);
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        long j6 = id;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 111, 0, 0, 0, i10, 0, 0, iValidateSYR2, 0, double2.f776x, double2.f777y, id2, id3, a.DEFAULT_VALUE_FOR_DOUBLE, a.DEFAULT_VALUE_FOR_DOUBLE, j6, i11, i12, 0, 0, zIsIncSupp);
    }

    public void ZHER2K(int i10, int i11, Double2 double2, Allocation allocation, Allocation allocation2, double d, Allocation allocation3) {
        long dummyAlloc;
        long dummyAlloc2;
        validateUplo(i10);
        validateHER2K(Element.F64_2(this.mRS), i11, allocation, allocation2, allocation3);
        int x6 = i11 == 111 ? allocation.getType().getX() : allocation.getType().getY();
        boolean zIsIncSupp = isIncSupp();
        allocation.getID(this.mRS);
        long id = allocation2.getID(this.mRS);
        long id2 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            getDummyAlloc(allocation);
            dummyAlloc = getDummyAlloc(allocation2);
            dummyAlloc2 = getDummyAlloc(allocation3);
        } else {
            dummyAlloc = id;
            dummyAlloc2 = id2;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 142, i11, 0, 0, i10, 0, 0, allocation3.getType().getX(), x6, double2.f776x, double2.f777y, allocation.getID(this.mRS), dummyAlloc, d, a.DEFAULT_VALUE_FOR_DOUBLE, dummyAlloc2, 0, 0, 0, 0, zIsIncSupp);
    }

    public void ZHERK(int i10, int i11, double d, Allocation allocation, double d2, Allocation allocation2) {
        long dummyAlloc;
        long dummyAlloc2;
        validateUplo(i10);
        validateHERK(Element.F64_2(this.mRS), i11, allocation, allocation2);
        int y6 = i11 == 113 ? allocation.getType().getY() : allocation.getType().getX();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            dummyAlloc = getDummyAlloc(allocation);
            dummyAlloc2 = getDummyAlloc(allocation2);
        } else {
            dummyAlloc = id;
            dummyAlloc2 = id2;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 141, i11, 0, 0, i10, 0, 0, allocation2.getType().getX(), y6, d, a.DEFAULT_VALUE_FOR_DOUBLE, dummyAlloc, 0L, d2, a.DEFAULT_VALUE_FOR_DOUBLE, dummyAlloc2, 0, 0, 0, 0, zIsIncSupp);
    }

    public void ZHPMV(int i10, Double2 double2, Allocation allocation, Allocation allocation2, int i11, Double2 double3, Allocation allocation3, int i12) {
        int iValidateSPR2 = validateSPR2(Element.F64_2(this.mRS), i10, allocation2, i11, allocation3, i12, allocation);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
            id3 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 106, 0, 0, 0, i10, 0, 0, iValidateSPR2, 0, double2.f776x, double2.f777y, id, id2, double3.f776x, double3.f777y, id3, i11, i12, 0, 0, zIsIncSupp);
    }

    public void ZHPR(int i10, double d, Allocation allocation, int i11, Allocation allocation2) {
        long j6;
        long dummyAlloc;
        int iValidateSPR = validateSPR(Element.F64_2(this.mRS), i10, allocation, i11, allocation2);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation2.getID(this.mRS);
        long id2 = allocation.getID(this.mRS);
        if (zIsIncSupp) {
            long dummyAlloc2 = getDummyAlloc(allocation2);
            dummyAlloc = getDummyAlloc(allocation);
            j6 = dummyAlloc2;
        } else {
            j6 = id;
            dummyAlloc = id2;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 110, 0, 0, 0, i10, 0, 0, iValidateSPR, 0, d, a.DEFAULT_VALUE_FOR_DOUBLE, dummyAlloc, 0L, a.DEFAULT_VALUE_FOR_DOUBLE, a.DEFAULT_VALUE_FOR_DOUBLE, j6, i11, 0, 0, 0, zIsIncSupp);
    }

    public void ZHPR2(int i10, Double2 double2, Allocation allocation, int i11, Allocation allocation2, int i12, Allocation allocation3) {
        int iValidateSPR2 = validateSPR2(Element.F64_2(this.mRS), i10, allocation, i11, allocation2, i12, allocation3);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation3.getID(this.mRS);
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation3);
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        long j6 = id;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 112, 0, 0, 0, i10, 0, 0, iValidateSPR2, 0, double2.f776x, double2.f777y, id2, id3, a.DEFAULT_VALUE_FOR_DOUBLE, a.DEFAULT_VALUE_FOR_DOUBLE, j6, i11, i12, 0, 0, zIsIncSupp);
    }

    public void ZSYMM(int i10, int i11, Double2 double2, Allocation allocation, Allocation allocation2, Double2 double3, Allocation allocation3) {
        validateSide(i10);
        validateUplo(i11);
        if (allocation.getType().getX() != allocation.getType().getY()) {
            throw new RSRuntimeException("Matrix A is not symmetric");
        }
        validateL3(Element.F64_2(this.mRS), 0, 0, i10, allocation, allocation2, allocation3);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
            id3 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 132, 0, 0, i10, i11, 0, allocation3.getType().getY(), allocation3.getType().getX(), 0, double2.f776x, double2.f777y, id, id2, double3.f776x, double3.f777y, id3, 0, 0, 0, 0, zIsIncSupp);
    }

    public void ZSYR2K(int i10, int i11, Double2 double2, Allocation allocation, Allocation allocation2, Double2 double3, Allocation allocation3) {
        long j6;
        long dummyAlloc;
        long dummyAlloc2;
        validateUplo(i10);
        validateSYR2K(Element.F64_2(this.mRS), i11, allocation, allocation2, allocation3);
        int y6 = i11 != 111 ? allocation.getType().getY() : allocation.getType().getX();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (zIsIncSupp) {
            long dummyAlloc3 = getDummyAlloc(allocation);
            dummyAlloc = getDummyAlloc(allocation2);
            j6 = dummyAlloc3;
            dummyAlloc2 = getDummyAlloc(allocation3);
        } else {
            j6 = id;
            dummyAlloc = id2;
            dummyAlloc2 = id3;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 134, i11, 0, 0, i10, 0, 0, allocation3.getType().getX(), y6, double2.f776x, double2.f777y, j6, dummyAlloc, double3.f776x, double3.f777y, dummyAlloc2, 0, 0, 0, 0, zIsIncSupp);
    }

    public void ZSYRK(int i10, int i11, Double2 double2, Allocation allocation, Double2 double3, Allocation allocation2) {
        validateTranspose(i11);
        validateUplo(i10);
        validateL3(Element.F64_2(this.mRS), i11, 0, 0, allocation, null, allocation2);
        int y6 = i11 != 111 ? allocation.getType().getY() : allocation.getType().getX();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 133, i11, 0, 0, i10, 0, 0, allocation2.getType().getX(), y6, double2.f776x, double2.f777y, id, 0L, double3.f776x, double3.f777y, allocation2.getID(this.mRS), 0, 0, 0, 0, zIsIncSupp);
    }

    public void ZTBMV(int i10, int i11, int i12, int i13, Allocation allocation, Allocation allocation2, int i14) {
        if (i13 < 0) {
            throw new RSRuntimeException("K must be greater than or equal to 0");
        }
        validateTRMV(Element.F64_2(this.mRS), i10, i11, i12, allocation, allocation2, i14);
        int y6 = allocation.getType().getY();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 74, i11, 0, 0, i10, i12, 0, y6, i13, a.DEFAULT_VALUE_FOR_DOUBLE, a.DEFAULT_VALUE_FOR_DOUBLE, id, id2, a.DEFAULT_VALUE_FOR_DOUBLE, a.DEFAULT_VALUE_FOR_DOUBLE, 0L, i14, 0, 0, 0, zIsIncSupp);
    }

    public void ZTBSV(int i10, int i11, int i12, int i13, Allocation allocation, Allocation allocation2, int i14) {
        validateTRMV(Element.F64_2(this.mRS), i10, i11, i12, allocation, allocation2, i14);
        int y6 = allocation.getType().getY();
        if (i13 < 0) {
            throw new RSRuntimeException("Number of diagonals must be positive");
        }
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 77, i11, 0, 0, i10, i12, 0, y6, i13, a.DEFAULT_VALUE_FOR_DOUBLE, a.DEFAULT_VALUE_FOR_DOUBLE, id, id2, a.DEFAULT_VALUE_FOR_DOUBLE, a.DEFAULT_VALUE_FOR_DOUBLE, 0L, i14, 0, 0, 0, zIsIncSupp);
    }

    public void ZTPMV(int i10, int i11, int i12, Allocation allocation, Allocation allocation2, int i13) {
        int iValidateTPMV = validateTPMV(Element.F64_2(this.mRS), i10, i11, i12, allocation, allocation2, i13);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 75, i11, 0, 0, i10, i12, 0, iValidateTPMV, 0, a.DEFAULT_VALUE_FOR_DOUBLE, a.DEFAULT_VALUE_FOR_DOUBLE, id, id2, a.DEFAULT_VALUE_FOR_DOUBLE, a.DEFAULT_VALUE_FOR_DOUBLE, 0L, i13, 0, 0, 0, zIsIncSupp);
    }

    public void ZTPSV(int i10, int i11, int i12, Allocation allocation, Allocation allocation2, int i13) {
        int iValidateTPMV = validateTPMV(Element.F64_2(this.mRS), i10, i11, i12, allocation, allocation2, i13);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 78, i11, 0, 0, i10, i12, 0, iValidateTPMV, 0, a.DEFAULT_VALUE_FOR_DOUBLE, a.DEFAULT_VALUE_FOR_DOUBLE, id, id2, a.DEFAULT_VALUE_FOR_DOUBLE, a.DEFAULT_VALUE_FOR_DOUBLE, 0L, i13, 0, 0, 0, zIsIncSupp);
    }

    public void ZTRMM(int i10, int i11, int i12, int i13, Double2 double2, Allocation allocation, Allocation allocation2) {
        validateUplo(i11);
        validateDiag(i13);
        validateTRMM(Element.F64_2(this.mRS), i10, i12, allocation, allocation2);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        long j6 = id2;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 135, i12, 0, i10, i11, i13, allocation2.getType().getY(), allocation2.getType().getX(), 0, double2.f776x, double2.f777y, id, j6, a.DEFAULT_VALUE_FOR_DOUBLE, a.DEFAULT_VALUE_FOR_DOUBLE, 0L, 0, 0, 0, 0, zIsIncSupp);
    }

    public void ZTRMV(int i10, int i11, int i12, Allocation allocation, Allocation allocation2, int i13) {
        validateTRMV(Element.F64_2(this.mRS), i10, i11, i12, allocation, allocation2, i13);
        int y6 = allocation.getType().getY();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 73, i11, 0, 0, i10, i12, 0, y6, 0, a.DEFAULT_VALUE_FOR_DOUBLE, a.DEFAULT_VALUE_FOR_DOUBLE, id, id2, a.DEFAULT_VALUE_FOR_DOUBLE, a.DEFAULT_VALUE_FOR_DOUBLE, 0L, i13, 0, 0, 0, zIsIncSupp);
    }

    public void ZTRSM(int i10, int i11, int i12, int i13, Double2 double2, Allocation allocation, Allocation allocation2) {
        validateUplo(i11);
        validateDiag(i13);
        validateTRSM(Element.F64_2(this.mRS), i10, i12, allocation, allocation2);
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        long j6 = id2;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 136, i12, 0, i10, i11, i13, allocation2.getType().getY(), allocation2.getType().getX(), 0, double2.f776x, double2.f777y, id, j6, a.DEFAULT_VALUE_FOR_DOUBLE, a.DEFAULT_VALUE_FOR_DOUBLE, 0L, 0, 0, 0, 0, zIsIncSupp);
    }

    public void ZTRSV(int i10, int i11, int i12, Allocation allocation, Allocation allocation2, int i13) {
        validateTRMV(Element.F64_2(this.mRS), i10, i11, i12, allocation, allocation2, i13);
        int y6 = allocation.getType().getY();
        boolean zIsIncSupp = isIncSupp();
        long id = allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        if (zIsIncSupp) {
            id = getDummyAlloc(allocation);
            id2 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 76, i11, 0, 0, i10, i12, 0, y6, 0, a.DEFAULT_VALUE_FOR_DOUBLE, a.DEFAULT_VALUE_FOR_DOUBLE, id, id2, a.DEFAULT_VALUE_FOR_DOUBLE, a.DEFAULT_VALUE_FOR_DOUBLE, 0L, i13, 0, 0, 0, zIsIncSupp);
    }

    private ScriptIntrinsicBLAS(long j6, RenderScript renderScript) {
        super(j6, renderScript);
    }

    public static ScriptIntrinsicBLAS create(RenderScript renderScript) {
        renderScript.isUseNative();
        ScriptIntrinsicBLAS scriptIntrinsicBLAS = new ScriptIntrinsicBLAS(renderScript.nScriptIntrinsicCreate(13, Element.U32(renderScript).getID(renderScript), false), renderScript);
        scriptIntrinsicBLAS.setIncSupp(false);
        return scriptIntrinsicBLAS;
    }

    static void validateGEMV(Element element, int i10, Allocation allocation, Allocation allocation2, int i11, Allocation allocation3, int i12) {
        int i13;
        int i14;
        validateTranspose(i10);
        int y6 = allocation.getType().getY();
        int x6 = allocation.getType().getX();
        if (allocation.getType().getElement().isCompatible(element) && allocation2.getType().getElement().isCompatible(element) && allocation3.getType().getElement().isCompatible(element)) {
            if (allocation2.getType().getY() <= 1 && allocation3.getType().getY() <= 1) {
                if (i11 > 0 && i12 > 0) {
                    if (i10 == 111) {
                        i14 = ((x6 - 1) * i11) + 1;
                        i13 = ((y6 - 1) * i12) + 1;
                    } else {
                        int i15 = ((y6 - 1) * i11) + 1;
                        i13 = ((x6 - 1) * i12) + 1;
                        i14 = i15;
                    }
                    if (allocation2.getType().getX() == i14 && allocation3.getType().getX() == i13) {
                        return;
                    } else {
                        throw new RSRuntimeException("Incorrect vector dimensions for GEMV");
                    }
                }
                throw new RSRuntimeException("Vector increments must be greater than 0");
            }
            throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
        }
        throw new RSRuntimeException("Called BLAS with wrong Element type");
    }

    static void validateGER(Element element, Allocation allocation, int i10, Allocation allocation2, int i11, Allocation allocation3) {
        if (allocation3.getType().getElement().isCompatible(element) && allocation.getType().getElement().isCompatible(element) && allocation2.getType().getElement().isCompatible(element)) {
            if (allocation.getType().getY() <= 1 && allocation2.getType().getY() <= 1) {
                int y6 = allocation3.getType().getY();
                int x6 = allocation3.getType().getX();
                if (x6 >= 1 && y6 >= 1) {
                    if (i10 > 0 && i11 > 0) {
                        if (allocation.getType().getX() == ((y6 - 1) * i10) + 1) {
                            if (allocation2.getType().getX() == ((x6 - 1) * i11) + 1) {
                                return;
                            } else {
                                throw new RSRuntimeException("Incorrect vector dimensions for GER");
                            }
                        }
                        throw new RSRuntimeException("Incorrect vector dimensions for GER");
                    }
                    throw new RSRuntimeException("Vector increments must be greater than 0");
                }
                throw new RSRuntimeException("M and N must be 1 or greater for GER");
            }
            throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
        }
        throw new RSRuntimeException("Called BLAS with wrong Element type");
    }

    static void validateGERU(Element element, Allocation allocation, int i10, Allocation allocation2, int i11, Allocation allocation3) {
        if (allocation3.getType().getElement().isCompatible(element) && allocation.getType().getElement().isCompatible(element) && allocation2.getType().getElement().isCompatible(element)) {
            if (allocation.getType().getY() <= 1 && allocation2.getType().getY() <= 1) {
                int y6 = allocation3.getType().getY();
                int x6 = allocation3.getType().getX();
                if (i10 > 0 && i11 > 0) {
                    if (allocation.getType().getX() == ((y6 - 1) * i10) + 1) {
                        if (allocation2.getType().getX() == ((x6 - 1) * i11) + 1) {
                            return;
                        } else {
                            throw new RSRuntimeException("Incorrect vector dimensions for GERU");
                        }
                    }
                    throw new RSRuntimeException("Incorrect vector dimensions for GERU");
                }
                throw new RSRuntimeException("Vector increments must be greater than 0");
            }
            throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
        }
        throw new RSRuntimeException("Called BLAS with wrong Element type");
    }

    static void validateHEMM(Element element, int i10, Allocation allocation, Allocation allocation2, Allocation allocation3) {
        validateSide(i10);
        if (allocation.getType().getElement().isCompatible(element) && allocation2.getType().getElement().isCompatible(element) && allocation3.getType().getElement().isCompatible(element)) {
            int x6 = allocation.getType().getX();
            if (x6 == allocation.getType().getY()) {
                if ((i10 == 141 && x6 != allocation2.getType().getY()) || (i10 == 142 && x6 != allocation2.getType().getX())) {
                    throw new RSRuntimeException("Called HEMM with invalid B");
                }
                if (allocation2.getType().getX() == allocation3.getType().getX() && allocation2.getType().getY() == allocation3.getType().getY()) {
                    return;
                } else {
                    throw new RSRuntimeException("Called HEMM with mismatched B and C");
                }
            }
            throw new RSRuntimeException("Called HEMM with non-square A");
        }
        throw new RSRuntimeException("Called BLAS with wrong Element type");
    }

    static void validateHER2K(Element element, int i10, Allocation allocation, Allocation allocation2, Allocation allocation3) {
        if (allocation.getType().getElement().isCompatible(element) && allocation2.getType().getElement().isCompatible(element) && allocation3.getType().getElement().isCompatible(element)) {
            validateConjTranspose(i10);
            int x6 = allocation3.getType().getX();
            if (x6 == allocation3.getType().getY()) {
                if (i10 == 111) {
                    if (allocation.getType().getY() != x6) {
                        throw new RSRuntimeException("Called HER2K with invalid matrices");
                    }
                } else if (allocation.getType().getX() != x6) {
                    throw new RSRuntimeException("Called HER2K with invalid matrices");
                }
                if (allocation.getType().getX() == allocation2.getType().getX() && allocation.getType().getY() == allocation2.getType().getY()) {
                    return;
                } else {
                    throw new RSRuntimeException("Called HER2K with invalid A and B matrices");
                }
            }
            throw new RSRuntimeException("Called HER2K with non-square C");
        }
        throw new RSRuntimeException("Called BLAS with wrong Element type");
    }

    static void validateHERK(Element element, int i10, Allocation allocation, Allocation allocation2) {
        if (allocation.getType().getElement().isCompatible(element) && allocation2.getType().getElement().isCompatible(element)) {
            validateConjTranspose(i10);
            int x6 = allocation2.getType().getX();
            if (x6 == allocation2.getType().getY()) {
                if (i10 == 111) {
                    if (x6 != allocation.getType().getY()) {
                        throw new RSRuntimeException("Called HERK with invalid A");
                    }
                    return;
                } else if (x6 == allocation.getType().getX()) {
                    return;
                } else {
                    throw new RSRuntimeException("Called HERK with invalid A");
                }
            }
            throw new RSRuntimeException("Called HERK with non-square C");
        }
        throw new RSRuntimeException("Called BLAS with wrong Element type");
    }

    static int validateSPMV(Element element, int i10, Allocation allocation, Allocation allocation2, int i11, Allocation allocation3, int i12) {
        validateUplo(i10);
        if (allocation.getType().getElement().isCompatible(element) && allocation2.getType().getElement().isCompatible(element) && allocation3.getType().getElement().isCompatible(element)) {
            if (allocation2.getType().getY() <= 1 && allocation3.getType().getY() <= 1) {
                if (allocation.getType().getY() <= 1) {
                    int iSqrt = (int) Math.sqrt(((double) allocation.getType().getX()) * 2.0d);
                    if (allocation.getType().getX() == ((iSqrt + 1) * iSqrt) / 2) {
                        if (i11 > 0 && i12 > 0) {
                            int i13 = iSqrt - 1;
                            if (allocation2.getType().getX() == (i11 * i13) + 1) {
                                if (allocation3.getType().getX() == (i13 * i12) + 1) {
                                    return iSqrt;
                                }
                                throw new RSRuntimeException("Incorrect vector dimensions for SPMV");
                            }
                            throw new RSRuntimeException("Incorrect vector dimensions for SPMV");
                        }
                        throw new RSRuntimeException("Vector increments must be greater than 0");
                    }
                    throw new RSRuntimeException("Invalid dimension for Ap");
                }
                throw new RSRuntimeException("Ap must have a Y dimension of 0 or 1");
            }
            throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
        }
        throw new RSRuntimeException("Called BLAS with wrong Element type");
    }

    static int validateSPR(Element element, int i10, Allocation allocation, int i11, Allocation allocation2) {
        validateUplo(i10);
        if (allocation2.getType().getElement().isCompatible(element) && allocation.getType().getElement().isCompatible(element)) {
            if (allocation.getType().getY() <= 1) {
                if (allocation2.getType().getY() <= 1) {
                    int iSqrt = (int) Math.sqrt(((double) allocation2.getType().getX()) * 2.0d);
                    if (allocation2.getType().getX() == ((iSqrt + 1) * iSqrt) / 2) {
                        if (i11 > 0) {
                            if (allocation.getType().getX() == ((iSqrt - 1) * i11) + 1) {
                                return iSqrt;
                            }
                            throw new RSRuntimeException("Incorrect vector dimensions for SPR");
                        }
                        throw new RSRuntimeException("Vector increments must be greater than 0");
                    }
                    throw new RSRuntimeException("Invalid dimension for Ap");
                }
                throw new RSRuntimeException("Ap must have a Y dimension of 0 or 1");
            }
            throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
        }
        throw new RSRuntimeException("Called BLAS with wrong Element type");
    }

    static int validateSPR2(Element element, int i10, Allocation allocation, int i11, Allocation allocation2, int i12, Allocation allocation3) {
        validateUplo(i10);
        if (allocation3.getType().getElement().isCompatible(element) && allocation.getType().getElement().isCompatible(element) && allocation2.getType().getElement().isCompatible(element)) {
            if (allocation.getType().getY() <= 1 && allocation2.getType().getY() <= 1) {
                if (allocation3.getType().getY() <= 1) {
                    int iSqrt = (int) Math.sqrt(((double) allocation3.getType().getX()) * 2.0d);
                    if (allocation3.getType().getX() == ((iSqrt + 1) * iSqrt) / 2) {
                        if (i11 > 0 && i12 > 0) {
                            int i13 = iSqrt - 1;
                            int i14 = (i11 * i13) + 1;
                            int i15 = (i13 * i12) + 1;
                            if (allocation.getType().getX() == i14 && allocation2.getType().getX() == i15) {
                                return iSqrt;
                            }
                            throw new RSRuntimeException("Incorrect vector dimensions for SPR2");
                        }
                        throw new RSRuntimeException("Vector increments must be greater than 0");
                    }
                    throw new RSRuntimeException("Invalid dimension for Ap");
                }
                throw new RSRuntimeException("Ap must have a Y dimension of 0 or 1");
            }
            throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
        }
        throw new RSRuntimeException("Called BLAS with wrong Element type");
    }

    static int validateSYMV(Element element, int i10, Allocation allocation, Allocation allocation2, Allocation allocation3, int i11, int i12) {
        validateUplo(i10);
        int y6 = allocation.getType().getY();
        if (allocation.getType().getX() == y6) {
            if (allocation.getType().getElement().isCompatible(element) && allocation2.getType().getElement().isCompatible(element) && allocation3.getType().getElement().isCompatible(element)) {
                if (allocation2.getType().getY() <= 1 && allocation3.getType().getY() <= 1) {
                    if (i11 > 0 && i12 > 0) {
                        int i13 = y6 - 1;
                        if (allocation2.getType().getX() == (i11 * i13) + 1) {
                            if (allocation3.getType().getX() == (i13 * i12) + 1) {
                                return y6;
                            }
                            throw new RSRuntimeException("Incorrect vector dimensions for SYMV");
                        }
                        throw new RSRuntimeException("Incorrect vector dimensions for SYMV");
                    }
                    throw new RSRuntimeException("Vector increments must be greater than 0");
                }
                throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
            }
            throw new RSRuntimeException("Called BLAS with wrong Element type");
        }
        throw new RSRuntimeException("A must be a square matrix for SYMV");
    }

    static int validateSYR(Element element, int i10, Allocation allocation, int i11, Allocation allocation2) {
        validateUplo(i10);
        if (allocation2.getType().getElement().isCompatible(element) && allocation.getType().getElement().isCompatible(element)) {
            int x6 = allocation2.getType().getX();
            if (allocation.getType().getY() <= 1) {
                if (x6 == allocation2.getType().getY()) {
                    if (i11 > 0) {
                        if (allocation.getType().getX() == ((x6 - 1) * i11) + 1) {
                            return x6;
                        }
                        throw new RSRuntimeException("Incorrect vector dimensions for SYR");
                    }
                    throw new RSRuntimeException("Vector increments must be greater than 0");
                }
                throw new RSRuntimeException("A must be a symmetric matrix");
            }
            throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
        }
        throw new RSRuntimeException("Called BLAS with wrong Element type");
    }

    static int validateSYR2(Element element, int i10, Allocation allocation, int i11, Allocation allocation2, int i12, Allocation allocation3) {
        validateUplo(i10);
        if (allocation3.getType().getElement().isCompatible(element) && allocation.getType().getElement().isCompatible(element) && allocation2.getType().getElement().isCompatible(element)) {
            if (allocation.getType().getY() <= 1 && allocation2.getType().getY() <= 1) {
                int x6 = allocation3.getType().getX();
                if (x6 == allocation3.getType().getY()) {
                    if (i11 > 0 && i12 > 0) {
                        int i13 = x6 - 1;
                        int i14 = (i11 * i13) + 1;
                        int i15 = (i13 * i12) + 1;
                        if (allocation.getType().getX() == i14 && allocation2.getType().getX() == i15) {
                            return x6;
                        }
                        throw new RSRuntimeException("Incorrect vector dimensions for SYR");
                    }
                    throw new RSRuntimeException("Vector increments must be greater than 0");
                }
                throw new RSRuntimeException("A must be a symmetric matrix");
            }
            throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
        }
        throw new RSRuntimeException("Called BLAS with wrong Element type");
    }

    static void validateSYR2K(Element element, int i10, Allocation allocation, Allocation allocation2, Allocation allocation3) {
        int y6;
        validateTranspose(i10);
        if (allocation.getType().getElement().isCompatible(element) && allocation2.getType().getElement().isCompatible(element) && allocation3.getType().getElement().isCompatible(element)) {
            if (i10 == 112) {
                y6 = allocation.getType().getX();
            } else {
                y6 = allocation.getType().getY();
            }
            if (allocation3.getType().getX() == y6 && allocation3.getType().getY() == y6) {
                if (allocation.getType().getX() == allocation2.getType().getX() && allocation.getType().getY() == allocation2.getType().getY()) {
                    return;
                } else {
                    throw new RSRuntimeException("Invalid A and B in SYR2K");
                }
            }
            throw new RSRuntimeException("Invalid symmetric matrix in SYR2K");
        }
        throw new RSRuntimeException("Called BLAS with wrong Element type");
    }

    static int validateTPMV(Element element, int i10, int i11, int i12, Allocation allocation, Allocation allocation2, int i13) {
        validateTranspose(i11);
        validateUplo(i10);
        validateDiag(i12);
        if (allocation.getType().getElement().isCompatible(element) && allocation2.getType().getElement().isCompatible(element)) {
            if (allocation2.getType().getY() <= 1) {
                if (allocation.getType().getY() <= 1) {
                    int iSqrt = (int) Math.sqrt(((double) allocation.getType().getX()) * 2.0d);
                    if (allocation.getType().getX() == ((iSqrt + 1) * iSqrt) / 2) {
                        if (i13 > 0) {
                            if (allocation2.getType().getX() == ((iSqrt - 1) * i13) + 1) {
                                return iSqrt;
                            }
                            throw new RSRuntimeException("Incorrect vector dimensions for TPMV");
                        }
                        throw new RSRuntimeException("Vector increments must be greater than 0");
                    }
                    throw new RSRuntimeException("Invalid dimension for Ap");
                }
                throw new RSRuntimeException("Ap must have a Y dimension of 0 or 1");
            }
            throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
        }
        throw new RSRuntimeException("Called BLAS with wrong Element type");
    }

    static void validateTRMM(Element element, int i10, int i11, Allocation allocation, Allocation allocation2) {
        validateSide(i10);
        validateTranspose(i11);
        if (allocation.getType().getElement().isCompatible(element) && allocation2.getType().getElement().isCompatible(element)) {
            int y6 = allocation.getType().getY();
            int x6 = allocation.getType().getX();
            if (y6 == x6) {
                int y10 = allocation2.getType().getY();
                int x10 = allocation2.getType().getX();
                if (i10 == 141) {
                    if (x6 != y10) {
                        throw new RSRuntimeException("Called TRMM with invalid matrices");
                    }
                    return;
                } else if (x10 == y6) {
                    return;
                } else {
                    throw new RSRuntimeException("Called TRMM with invalid matrices");
                }
            }
            throw new RSRuntimeException("Called TRMM with a non-symmetric matrix A");
        }
        throw new RSRuntimeException("Called BLAS with wrong Element type");
    }

    static void validateTRMV(Element element, int i10, int i11, int i12, Allocation allocation, Allocation allocation2, int i13) {
        validateTranspose(i11);
        validateUplo(i10);
        validateDiag(i12);
        int y6 = allocation.getType().getY();
        if (allocation.getType().getX() == y6) {
            if (allocation.getType().getElement().isCompatible(element) && allocation2.getType().getElement().isCompatible(element)) {
                if (allocation2.getType().getY() <= 1) {
                    if (i13 > 0) {
                        if (allocation2.getType().getX() == ((y6 - 1) * i13) + 1) {
                            return;
                        } else {
                            throw new RSRuntimeException("Incorrect vector dimensions for TRMV");
                        }
                    }
                    throw new RSRuntimeException("Vector increments must be greater than 0");
                }
                throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
            }
            throw new RSRuntimeException("Called BLAS with wrong Element type");
        }
        throw new RSRuntimeException("A must be a square matrix for TRMV");
    }

    static void validateTRSM(Element element, int i10, int i11, Allocation allocation, Allocation allocation2) {
        validateSide(i10);
        validateTranspose(i11);
        if (allocation.getType().getElement().isCompatible(element) && allocation2.getType().getElement().isCompatible(element)) {
            int x6 = allocation.getType().getX();
            if (x6 == allocation.getType().getY()) {
                int y6 = allocation2.getType().getY();
                int x10 = allocation2.getType().getX();
                if (i10 == 141) {
                    if (x6 != y6) {
                        throw new RSRuntimeException("Called TRSM with invalid matrix dimensions");
                    }
                    return;
                } else if (x6 == x10) {
                    return;
                } else {
                    throw new RSRuntimeException("Called TRSM with invalid matrix dimensions");
                }
            }
            throw new RSRuntimeException("Called TRSM with a non-symmetric matrix A");
        }
        throw new RSRuntimeException("Called BLAS with wrong Element type");
    }
}

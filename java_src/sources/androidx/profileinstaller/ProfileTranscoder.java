package androidx.profileinstaller;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes9.dex */
@RequiresApi
class ProfileTranscoder {
    private static final int HOT = 1;
    private static final int INLINE_CACHE_MEGAMORPHIC_ENCODING = 7;
    private static final int INLINE_CACHE_MISSING_TYPES_ENCODING = 6;
    static final byte[] MAGIC_PROF = {112, 114, 111, 0};
    static final byte[] MAGIC_PROFM = {112, 114, 109, 0};
    private static final int POST_STARTUP = 4;
    private static final int STARTUP = 2;

    private static void J(@NonNull OutputStream outputStream, @NonNull DexProfileData[] dexProfileDataArr) throws IOException {
        Encoding.p(outputStream, dexProfileDataArr.length);
        for (DexProfileData dexProfileData : dexProfileDataArr) {
            String strJ = j(dexProfileData.apkName, dexProfileData.dexName, ProfileVersion.V001_N);
            Encoding.p(outputStream, Encoding.k(strJ));
            Encoding.p(outputStream, dexProfileData.methods.size());
            Encoding.p(outputStream, dexProfileData.classes.length);
            Encoding.q(outputStream, dexProfileData.dexChecksum);
            Encoding.n(outputStream, strJ);
            Iterator<Integer> it = dexProfileData.methods.keySet().iterator();
            while (it.hasNext()) {
                Encoding.p(outputStream, it.next().intValue());
            }
            for (int i10 : dexProfileData.classes) {
                Encoding.p(outputStream, i10);
            }
        }
    }

    private static void K(@NonNull OutputStream outputStream, @NonNull DexProfileData[] dexProfileDataArr) throws IOException {
        Encoding.r(outputStream, dexProfileDataArr.length);
        for (DexProfileData dexProfileData : dexProfileDataArr) {
            int size = dexProfileData.methods.size() * 4;
            String strJ = j(dexProfileData.apkName, dexProfileData.dexName, ProfileVersion.V005_O);
            Encoding.p(outputStream, Encoding.k(strJ));
            Encoding.p(outputStream, dexProfileData.classes.length);
            Encoding.q(outputStream, size);
            Encoding.q(outputStream, dexProfileData.dexChecksum);
            Encoding.n(outputStream, strJ);
            Iterator<Integer> it = dexProfileData.methods.keySet().iterator();
            while (it.hasNext()) {
                Encoding.p(outputStream, it.next().intValue());
                Encoding.p(outputStream, 0);
            }
            for (int i10 : dexProfileData.classes) {
                Encoding.p(outputStream, i10);
            }
        }
    }

    @NonNull
    private static byte[] b(@NonNull DexProfileData[] dexProfileDataArr, @NonNull byte[] bArr) throws IOException {
        int i10 = 0;
        int iK = 0;
        for (DexProfileData dexProfileData : dexProfileDataArr) {
            iK += Encoding.k(j(dexProfileData.apkName, dexProfileData.dexName, bArr)) + 16 + (dexProfileData.classSetSize * 2) + dexProfileData.hotMethodRegionSize + k(dexProfileData.numMethodIds);
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(iK);
        if (Arrays.equals(bArr, ProfileVersion.V009_O_MR1)) {
            int length = dexProfileDataArr.length;
            while (i10 < length) {
                DexProfileData dexProfileData2 = dexProfileDataArr[i10];
                G(byteArrayOutputStream, dexProfileData2, j(dexProfileData2.apkName, dexProfileData2.dexName, bArr));
                F(byteArrayOutputStream, dexProfileData2);
                i10++;
            }
        } else {
            for (DexProfileData dexProfileData3 : dexProfileDataArr) {
                G(byteArrayOutputStream, dexProfileData3, j(dexProfileData3.apkName, dexProfileData3.dexName, bArr));
            }
            int length2 = dexProfileDataArr.length;
            while (i10 < length2) {
                F(byteArrayOutputStream, dexProfileDataArr[i10]);
                i10++;
            }
        }
        if (byteArrayOutputStream.size() == iK) {
            return byteArrayOutputStream.toByteArray();
        }
        throw Encoding.c("The bytes saved do not match expectation. actual=" + byteArrayOutputStream.size() + " expected=" + iK);
    }

    @Nullable
    private static DexProfileData i(@NonNull DexProfileData[] dexProfileDataArr, @NonNull String str) {
        if (dexProfileDataArr.length <= 0) {
            return null;
        }
        String strH = h(str);
        for (int i10 = 0; i10 < dexProfileDataArr.length; i10++) {
            if (dexProfileDataArr[i10].dexName.equals(strH)) {
                return dexProfileDataArr[i10];
            }
        }
        return null;
    }

    private static int l(int i10, int i11, int i12) {
        if (i10 == 1) {
            throw Encoding.c("HOT methods are not stored in the bitmap");
        }
        if (i10 == 2) {
            return i11;
        }
        if (i10 == 4) {
            return i11 + i12;
        }
        throw Encoding.c("Unexpected flag: " + i10);
    }

    private static int n(@NonNull BitSet bitSet, int i10, int i11) {
        int i12 = bitSet.get(l(2, i10, i11)) ? 2 : 0;
        return bitSet.get(l(4, i10, i11)) ? i12 | 4 : i12;
    }

    static byte[] o(@NonNull InputStream inputStream, @NonNull byte[] bArr) throws IOException {
        if (Arrays.equals(bArr, Encoding.d(inputStream, bArr.length))) {
            return Encoding.d(inputStream, ProfileVersion.V010_P.length);
        }
        throw Encoding.c("Invalid magic");
    }

    private static int y(int i10) {
        return (i10 + 7) & (-8);
    }

    static boolean B(@NonNull OutputStream outputStream, @NonNull byte[] bArr, @NonNull DexProfileData[] dexProfileDataArr) throws IOException {
        if (Arrays.equals(bArr, ProfileVersion.V015_S)) {
            N(outputStream, dexProfileDataArr);
            return true;
        }
        if (Arrays.equals(bArr, ProfileVersion.V010_P)) {
            M(outputStream, dexProfileDataArr);
            return true;
        }
        if (Arrays.equals(bArr, ProfileVersion.V005_O)) {
            K(outputStream, dexProfileDataArr);
            return true;
        }
        if (Arrays.equals(bArr, ProfileVersion.V009_O_MR1)) {
            L(outputStream, dexProfileDataArr);
            return true;
        }
        if (!Arrays.equals(bArr, ProfileVersion.V001_N)) {
            return false;
        }
        J(outputStream, dexProfileDataArr);
        return true;
    }

    private static void C(@NonNull OutputStream outputStream, @NonNull DexProfileData dexProfileData) throws IOException {
        int iIntValue = 0;
        for (int i10 : dexProfileData.classes) {
            Integer numValueOf = Integer.valueOf(i10);
            Encoding.p(outputStream, numValueOf.intValue() - iIntValue);
            iIntValue = numValueOf.intValue();
        }
    }

    private static WritableFileSection D(@NonNull DexProfileData[] dexProfileDataArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            Encoding.p(byteArrayOutputStream, dexProfileDataArr.length);
            int i10 = 2;
            for (DexProfileData dexProfileData : dexProfileDataArr) {
                Encoding.q(byteArrayOutputStream, dexProfileData.dexChecksum);
                Encoding.q(byteArrayOutputStream, dexProfileData.mTypeIdCount);
                Encoding.q(byteArrayOutputStream, dexProfileData.numMethodIds);
                String strJ = j(dexProfileData.apkName, dexProfileData.dexName, ProfileVersion.V015_S);
                int iK = Encoding.k(strJ);
                Encoding.p(byteArrayOutputStream, iK);
                i10 = i10 + 14 + iK;
                Encoding.n(byteArrayOutputStream, strJ);
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (i10 == byteArray.length) {
                WritableFileSection writableFileSection = new WritableFileSection(FileSectionType.DEX_FILES, i10, byteArray, false);
                byteArrayOutputStream.close();
                return writableFileSection;
            }
            throw Encoding.c("Expected size " + i10 + ", does not match actual size " + byteArray.length);
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static void E(@NonNull OutputStream outputStream, byte[] bArr) throws IOException {
        outputStream.write(MAGIC_PROF);
        outputStream.write(bArr);
    }

    private static void H(@NonNull OutputStream outputStream, @NonNull DexProfileData dexProfileData) throws IOException {
        byte[] bArr = new byte[k(dexProfileData.numMethodIds)];
        for (Map.Entry<Integer, Integer> entry : dexProfileData.methods.entrySet()) {
            int iIntValue = entry.getKey().intValue();
            int iIntValue2 = entry.getValue().intValue();
            if ((iIntValue2 & 2) != 0) {
                z(bArr, 2, iIntValue, dexProfileData);
            }
            if ((iIntValue2 & 4) != 0) {
                z(bArr, 4, iIntValue, dexProfileData);
            }
        }
        outputStream.write(bArr);
    }

    private static void I(@NonNull OutputStream outputStream, @NonNull DexProfileData dexProfileData) throws IOException {
        int i10 = 0;
        for (Map.Entry<Integer, Integer> entry : dexProfileData.methods.entrySet()) {
            int iIntValue = entry.getKey().intValue();
            if ((entry.getValue().intValue() & 1) != 0) {
                Encoding.p(outputStream, iIntValue - i10);
                Encoding.p(outputStream, 0);
                i10 = iIntValue;
            }
        }
    }

    private static void L(@NonNull OutputStream outputStream, @NonNull DexProfileData[] dexProfileDataArr) throws IOException {
        byte[] bArrB = b(dexProfileDataArr, ProfileVersion.V009_O_MR1);
        Encoding.r(outputStream, dexProfileDataArr.length);
        Encoding.m(outputStream, bArrB);
    }

    private static void M(@NonNull OutputStream outputStream, @NonNull DexProfileData[] dexProfileDataArr) throws IOException {
        byte[] bArrB = b(dexProfileDataArr, ProfileVersion.V010_P);
        Encoding.r(outputStream, dexProfileDataArr.length);
        Encoding.m(outputStream, bArrB);
    }

    private static void O(@NonNull OutputStream outputStream, @NonNull DexProfileData[] dexProfileDataArr) throws IOException {
        int length;
        ArrayList arrayList = new ArrayList(3);
        ArrayList arrayList2 = new ArrayList(3);
        arrayList.add(D(dexProfileDataArr));
        arrayList.add(c(dexProfileDataArr));
        arrayList.add(d(dexProfileDataArr));
        long length2 = ((long) ProfileVersion.V015_S.length) + ((long) MAGIC_PROF.length) + 4 + ((long) (arrayList.size() * 16));
        Encoding.q(outputStream, arrayList.size());
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            WritableFileSection writableFileSection = (WritableFileSection) arrayList.get(i10);
            Encoding.q(outputStream, writableFileSection.mType.b());
            Encoding.q(outputStream, length2);
            if (writableFileSection.mNeedsCompression) {
                byte[] bArr = writableFileSection.mContents;
                long length3 = bArr.length;
                byte[] bArrB = Encoding.b(bArr);
                arrayList2.add(bArrB);
                Encoding.q(outputStream, bArrB.length);
                Encoding.q(outputStream, length3);
                length = bArrB.length;
            } else {
                arrayList2.add(writableFileSection.mContents);
                Encoding.q(outputStream, writableFileSection.mContents.length);
                Encoding.q(outputStream, 0L);
                length = writableFileSection.mContents.length;
            }
            length2 += (long) length;
        }
        for (int i11 = 0; i11 < arrayList2.size(); i11++) {
            outputStream.write((byte[]) arrayList2.get(i11));
        }
    }

    private static int a(@NonNull DexProfileData dexProfileData) {
        Iterator<Map.Entry<Integer, Integer>> it = dexProfileData.methods.entrySet().iterator();
        int iIntValue = 0;
        while (it.hasNext()) {
            iIntValue |= it.next().getValue().intValue();
        }
        return iIntValue;
    }

    private static WritableFileSection c(@NonNull DexProfileData[] dexProfileDataArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i10 = 0;
        for (int i11 = 0; i11 < dexProfileDataArr.length; i11++) {
            try {
                DexProfileData dexProfileData = dexProfileDataArr[i11];
                Encoding.p(byteArrayOutputStream, i11);
                Encoding.p(byteArrayOutputStream, dexProfileData.classSetSize);
                i10 = i10 + 4 + (dexProfileData.classSetSize * 2);
                C(byteArrayOutputStream, dexProfileData);
            } catch (Throwable th) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (i10 == byteArray.length) {
            WritableFileSection writableFileSection = new WritableFileSection(FileSectionType.CLASSES, i10, byteArray, true);
            byteArrayOutputStream.close();
            return writableFileSection;
        }
        throw Encoding.c("Expected size " + i10 + ", does not match actual size " + byteArray.length);
    }

    private static WritableFileSection d(@NonNull DexProfileData[] dexProfileDataArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i10 = 0;
        for (int i11 = 0; i11 < dexProfileDataArr.length; i11++) {
            try {
                DexProfileData dexProfileData = dexProfileDataArr[i11];
                int iA = a(dexProfileData);
                byte[] bArrE = e(dexProfileData);
                byte[] bArrF = f(dexProfileData);
                Encoding.p(byteArrayOutputStream, i11);
                int length = bArrE.length + 2 + bArrF.length;
                Encoding.q(byteArrayOutputStream, length);
                Encoding.p(byteArrayOutputStream, iA);
                byteArrayOutputStream.write(bArrE);
                byteArrayOutputStream.write(bArrF);
                i10 = i10 + 6 + length;
            } catch (Throwable th) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (i10 == byteArray.length) {
            WritableFileSection writableFileSection = new WritableFileSection(FileSectionType.METHODS, i10, byteArray, true);
            byteArrayOutputStream.close();
            return writableFileSection;
        }
        throw Encoding.c("Expected size " + i10 + ", does not match actual size " + byteArray.length);
    }

    private static byte[] e(@NonNull DexProfileData dexProfileData) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            H(byteArrayOutputStream, dexProfileData);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static byte[] f(@NonNull DexProfileData dexProfileData) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            I(byteArrayOutputStream, dexProfileData);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @NonNull
    private static String g(@NonNull String str, @NonNull String str2) {
        if ("!".equals(str2)) {
            return str.replace(":", "!");
        }
        return ":".equals(str2) ? str.replace("!", ":") : str;
    }

    @NonNull
    private static String h(@NonNull String str) {
        int iIndexOf = str.indexOf("!");
        if (iIndexOf < 0) {
            iIndexOf = str.indexOf(":");
        }
        return iIndexOf > 0 ? str.substring(iIndexOf + 1) : str;
    }

    private static int k(int i10) {
        return y(i10 * 2) / 8;
    }

    private static int[] m(@NonNull InputStream inputStream, int i10) throws IOException {
        int[] iArr = new int[i10];
        int iH = 0;
        for (int i11 = 0; i11 < i10; i11++) {
            iH += Encoding.h(inputStream);
            iArr[i11] = iH;
        }
        return iArr;
    }

    @NonNull
    static DexProfileData[] q(@NonNull InputStream inputStream, @NonNull byte[] bArr, @NonNull byte[] bArr2, DexProfileData[] dexProfileDataArr) throws IOException {
        if (Arrays.equals(bArr, ProfileVersion.METADATA_V001_N)) {
            if (Arrays.equals(ProfileVersion.V015_S, bArr2)) {
                throw Encoding.c("Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher");
            }
            return r(inputStream, bArr, dexProfileDataArr);
        }
        if (Arrays.equals(bArr, ProfileVersion.METADATA_V002)) {
            return t(inputStream, bArr2, dexProfileDataArr);
        }
        throw Encoding.c("Unsupported meta version");
    }

    @NonNull
    static DexProfileData[] r(@NonNull InputStream inputStream, @NonNull byte[] bArr, DexProfileData[] dexProfileDataArr) throws IOException {
        if (!Arrays.equals(bArr, ProfileVersion.METADATA_V001_N)) {
            throw Encoding.c("Unsupported meta version");
        }
        int iJ = Encoding.j(inputStream);
        byte[] bArrE = Encoding.e(inputStream, (int) Encoding.i(inputStream), (int) Encoding.i(inputStream));
        if (inputStream.read() > 0) {
            throw Encoding.c("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrE);
        try {
            DexProfileData[] dexProfileDataArrS = s(byteArrayInputStream, iJ, dexProfileDataArr);
            byteArrayInputStream.close();
            return dexProfileDataArrS;
        } catch (Throwable th) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static void v(@NonNull InputStream inputStream, @NonNull DexProfileData dexProfileData) throws IOException {
        BitSet bitSetValueOf = BitSet.valueOf(Encoding.d(inputStream, Encoding.a(dexProfileData.numMethodIds * 2)));
        int i10 = 0;
        while (true) {
            int i11 = dexProfileData.numMethodIds;
            if (i10 >= i11) {
                return;
            }
            int iN = n(bitSetValueOf, i10, i11);
            if (iN != 0) {
                Integer num = dexProfileData.methods.get(Integer.valueOf(i10));
                if (num == null) {
                    num = 0;
                }
                dexProfileData.methods.put(Integer.valueOf(i10), Integer.valueOf(iN | num.intValue()));
            }
            i10++;
        }
    }

    @NonNull
    static DexProfileData[] w(@NonNull InputStream inputStream, @NonNull byte[] bArr, @NonNull String str) throws IOException {
        if (!Arrays.equals(bArr, ProfileVersion.V010_P)) {
            throw Encoding.c("Unsupported version");
        }
        int iJ = Encoding.j(inputStream);
        byte[] bArrE = Encoding.e(inputStream, (int) Encoding.i(inputStream), (int) Encoding.i(inputStream));
        if (inputStream.read() > 0) {
            throw Encoding.c("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrE);
        try {
            DexProfileData[] dexProfileDataArrX = x(byteArrayInputStream, str, iJ);
            byteArrayInputStream.close();
            return dexProfileDataArrX;
        } catch (Throwable th) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @NonNull
    private static DexProfileData[] x(@NonNull InputStream inputStream, @NonNull String str, int i10) throws IOException {
        if (inputStream.available() == 0) {
            return new DexProfileData[0];
        }
        DexProfileData[] dexProfileDataArr = new DexProfileData[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            int iH = Encoding.h(inputStream);
            int iH2 = Encoding.h(inputStream);
            dexProfileDataArr[i11] = new DexProfileData(str, Encoding.f(inputStream, iH), Encoding.i(inputStream), 0L, iH2, (int) Encoding.i(inputStream), (int) Encoding.i(inputStream), new int[iH2], new TreeMap());
        }
        for (int i12 = 0; i12 < i10; i12++) {
            DexProfileData dexProfileData = dexProfileDataArr[i12];
            p(inputStream, dexProfileData);
            dexProfileData.classes = m(inputStream, dexProfileData.classSetSize);
            v(inputStream, dexProfileData);
        }
        return dexProfileDataArr;
    }

    private static void z(@NonNull byte[] bArr, int i10, int i11, @NonNull DexProfileData dexProfileData) {
        int iL = l(i10, i11, dexProfileData.numMethodIds);
        int i12 = iL / 8;
        bArr[i12] = (byte) ((1 << (iL % 8)) | bArr[i12]);
    }

    private ProfileTranscoder() {
    }

    private static void A(@NonNull InputStream inputStream) throws IOException {
        Encoding.h(inputStream);
        int iJ = Encoding.j(inputStream);
        if (iJ == 6 || iJ == 7) {
            return;
        }
        while (iJ > 0) {
            Encoding.j(inputStream);
            for (int iJ2 = Encoding.j(inputStream); iJ2 > 0; iJ2--) {
                Encoding.h(inputStream);
            }
            iJ--;
        }
    }

    private static void F(@NonNull OutputStream outputStream, @NonNull DexProfileData dexProfileData) throws IOException {
        I(outputStream, dexProfileData);
        C(outputStream, dexProfileData);
        H(outputStream, dexProfileData);
    }

    private static void G(@NonNull OutputStream outputStream, @NonNull DexProfileData dexProfileData, @NonNull String str) throws IOException {
        Encoding.p(outputStream, Encoding.k(str));
        Encoding.p(outputStream, dexProfileData.classSetSize);
        Encoding.q(outputStream, dexProfileData.hotMethodRegionSize);
        Encoding.q(outputStream, dexProfileData.dexChecksum);
        Encoding.q(outputStream, dexProfileData.numMethodIds);
        Encoding.n(outputStream, str);
    }

    private static void N(@NonNull OutputStream outputStream, @NonNull DexProfileData[] dexProfileDataArr) throws IOException {
        O(outputStream, dexProfileDataArr);
    }

    @NonNull
    private static String j(@NonNull String str, @NonNull String str2, @NonNull byte[] bArr) {
        String strA = ProfileVersion.a(bArr);
        if (str.length() <= 0) {
            return g(str2, strA);
        }
        if (str2.equals("classes.dex")) {
            return str;
        }
        if (!str2.contains("!") && !str2.contains(":")) {
            if (str2.endsWith(".apk")) {
                return str2;
            }
            return str + ProfileVersion.a(bArr) + str2;
        }
        return g(str2, strA);
    }

    private static void p(@NonNull InputStream inputStream, @NonNull DexProfileData dexProfileData) throws IOException {
        int iAvailable = inputStream.available() - dexProfileData.hotMethodRegionSize;
        int iH = 0;
        while (inputStream.available() > iAvailable) {
            iH += Encoding.h(inputStream);
            dexProfileData.methods.put(Integer.valueOf(iH), 1);
            for (int iH2 = Encoding.h(inputStream); iH2 > 0; iH2--) {
                A(inputStream);
            }
        }
        if (inputStream.available() != iAvailable) {
            throw Encoding.c("Read too much data during profile line parse");
        }
    }

    @NonNull
    private static DexProfileData[] s(@NonNull InputStream inputStream, int i10, DexProfileData[] dexProfileDataArr) throws IOException {
        if (inputStream.available() == 0) {
            return new DexProfileData[0];
        }
        if (i10 == dexProfileDataArr.length) {
            String[] strArr = new String[i10];
            int[] iArr = new int[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                int iH = Encoding.h(inputStream);
                iArr[i11] = Encoding.h(inputStream);
                strArr[i11] = Encoding.f(inputStream, iH);
            }
            for (int i12 = 0; i12 < i10; i12++) {
                DexProfileData dexProfileData = dexProfileDataArr[i12];
                if (dexProfileData.dexName.equals(strArr[i12])) {
                    int i13 = iArr[i12];
                    dexProfileData.classSetSize = i13;
                    dexProfileData.classes = m(inputStream, i13);
                } else {
                    throw Encoding.c("Order of dexfiles in metadata did not match baseline");
                }
            }
            return dexProfileDataArr;
        }
        throw Encoding.c("Mismatched number of dex files found in metadata");
    }

    @NonNull
    static DexProfileData[] t(@NonNull InputStream inputStream, @NonNull byte[] bArr, DexProfileData[] dexProfileDataArr) throws IOException {
        int iH = Encoding.h(inputStream);
        byte[] bArrE = Encoding.e(inputStream, (int) Encoding.i(inputStream), (int) Encoding.i(inputStream));
        if (inputStream.read() <= 0) {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrE);
            try {
                DexProfileData[] dexProfileDataArrU = u(byteArrayInputStream, bArr, iH, dexProfileDataArr);
                byteArrayInputStream.close();
                return dexProfileDataArrU;
            } catch (Throwable th) {
                try {
                    byteArrayInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        throw Encoding.c("Content found after the end of file");
    }

    @NonNull
    private static DexProfileData[] u(@NonNull InputStream inputStream, @NonNull byte[] bArr, int i10, DexProfileData[] dexProfileDataArr) throws IOException {
        if (inputStream.available() == 0) {
            return new DexProfileData[0];
        }
        if (i10 == dexProfileDataArr.length) {
            for (int i11 = 0; i11 < i10; i11++) {
                Encoding.h(inputStream);
                String strF = Encoding.f(inputStream, Encoding.h(inputStream));
                long jI = Encoding.i(inputStream);
                int iH = Encoding.h(inputStream);
                DexProfileData dexProfileDataI = i(dexProfileDataArr, strF);
                if (dexProfileDataI != null) {
                    dexProfileDataI.mTypeIdCount = jI;
                    int[] iArrM = m(inputStream, iH);
                    if (Arrays.equals(bArr, ProfileVersion.V001_N)) {
                        dexProfileDataI.classSetSize = iH;
                        dexProfileDataI.classes = iArrM;
                    }
                } else {
                    throw Encoding.c("Missing profile key: " + strF);
                }
            }
            return dexProfileDataArr;
        }
        throw Encoding.c("Mismatched number of dex files found in metadata");
    }
}

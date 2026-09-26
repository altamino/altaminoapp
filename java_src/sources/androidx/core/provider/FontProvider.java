package androidx.core.provider;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.res.FontResourcesParserCompat;
import com.narvii.util.ws.WsMessage;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
class FontProvider {
    private static final Comparator<byte[]> sByteArrayComparator = new Comparator() { // from class: androidx.core.provider.a
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return FontProvider.g((byte[]) obj, (byte[]) obj2);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int g(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return bArr.length - bArr2.length;
        }
        for (int i10 = 0; i10 < bArr.length; i10++) {
            byte b7 = bArr[i10];
            byte b10 = bArr2[i10];
            if (b7 != b10) {
                return b7 - b10;
            }
        }
        return 0;
    }

    @RequiresApi
    static class Api16Impl {
        @DoNotInline
        static Cursor a(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2, Object obj) {
            return contentResolver.query(uri, strArr, str, strArr2, str2, (CancellationSignal) obj);
        }

        private Api16Impl() {
        }
    }

    private static List<byte[]> b(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    @NonNull
    @VisibleForTesting
    static FontsContractCompat.FontInfo[] h(Context context, FontRequest fontRequest, String str, CancellationSignal cancellationSignal) throws Throwable {
        ArrayList arrayList = new ArrayList();
        Uri uriBuild = new Uri.Builder().scheme("content").authority(str).build();
        Uri uriBuild2 = new Uri.Builder().scheme("content").authority(str).appendPath("file").build();
        Cursor cursor = null;
        try {
            Cursor cursorA = Api16Impl.a(context.getContentResolver(), uriBuild, new String[]{"_id", FontsContractCompat.Columns.FILE_ID, FontsContractCompat.Columns.TTC_INDEX, FontsContractCompat.Columns.VARIATION_SETTINGS, FontsContractCompat.Columns.WEIGHT, FontsContractCompat.Columns.ITALIC, FontsContractCompat.Columns.RESULT_CODE}, "query = ?", new String[]{fontRequest.g()}, null, cancellationSignal);
            if (cursorA != null) {
                try {
                    if (cursorA.getCount() > 0) {
                        int columnIndex = cursorA.getColumnIndex(FontsContractCompat.Columns.RESULT_CODE);
                        arrayList = new ArrayList();
                        int columnIndex2 = cursorA.getColumnIndex("_id");
                        int columnIndex3 = cursorA.getColumnIndex(FontsContractCompat.Columns.FILE_ID);
                        int columnIndex4 = cursorA.getColumnIndex(FontsContractCompat.Columns.TTC_INDEX);
                        int columnIndex5 = cursorA.getColumnIndex(FontsContractCompat.Columns.WEIGHT);
                        int columnIndex6 = cursorA.getColumnIndex(FontsContractCompat.Columns.ITALIC);
                        while (cursorA.moveToNext()) {
                            int i10 = columnIndex != -1 ? cursorA.getInt(columnIndex) : 0;
                            arrayList.add(FontsContractCompat.FontInfo.a(columnIndex3 == -1 ? ContentUris.withAppendedId(uriBuild, cursorA.getLong(columnIndex2)) : ContentUris.withAppendedId(uriBuild2, cursorA.getLong(columnIndex3)), columnIndex4 != -1 ? cursorA.getInt(columnIndex4) : 0, columnIndex5 != -1 ? cursorA.getInt(columnIndex5) : WsMessage.LIVE_LAYER_USER_JOINED_EVENT, columnIndex6 != -1 && cursorA.getInt(columnIndex6) == 1, i10));
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorA;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursorA != null) {
                cursorA.close();
            }
            return (FontsContractCompat.FontInfo[]) arrayList.toArray(new FontsContractCompat.FontInfo[0]);
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private FontProvider() {
    }

    private static boolean c(List<byte[]> list, List<byte[]> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (!Arrays.equals(list.get(i10), list2.get(i10))) {
                return false;
            }
        }
        return true;
    }

    private static List<List<byte[]>> d(FontRequest fontRequest, Resources resources) {
        if (fontRequest.b() != null) {
            return fontRequest.b();
        }
        return FontResourcesParserCompat.c(resources, fontRequest.c());
    }

    @NonNull
    static FontsContractCompat.FontFamilyResult e(@NonNull Context context, @NonNull FontRequest fontRequest, @Nullable CancellationSignal cancellationSignal) throws PackageManager.NameNotFoundException {
        ProviderInfo providerInfoF = f(context.getPackageManager(), fontRequest, context.getResources());
        if (providerInfoF == null) {
            return FontsContractCompat.FontFamilyResult.a(1, null);
        }
        return FontsContractCompat.FontFamilyResult.a(0, h(context, fontRequest, providerInfoF.authority, cancellationSignal));
    }

    @Nullable
    @VisibleForTesting
    static ProviderInfo f(@NonNull PackageManager packageManager, @NonNull FontRequest fontRequest, @Nullable Resources resources) throws PackageManager.NameNotFoundException {
        String strE = fontRequest.e();
        ProviderInfo providerInfoResolveContentProvider = packageManager.resolveContentProvider(strE, 0);
        if (providerInfoResolveContentProvider != null) {
            if (providerInfoResolveContentProvider.packageName.equals(fontRequest.f())) {
                List<byte[]> listB = b(packageManager.getPackageInfo(providerInfoResolveContentProvider.packageName, 64).signatures);
                Collections.sort(listB, sByteArrayComparator);
                List<List<byte[]>> listD = d(fontRequest, resources);
                for (int i10 = 0; i10 < listD.size(); i10++) {
                    ArrayList arrayList = new ArrayList(listD.get(i10));
                    Collections.sort(arrayList, sByteArrayComparator);
                    if (c(listB, arrayList)) {
                        return providerInfoResolveContentProvider;
                    }
                }
                return null;
            }
            throw new PackageManager.NameNotFoundException("Found content provider " + strE + ", but package was not " + fontRequest.f());
        }
        throw new PackageManager.NameNotFoundException("No package found for authority: " + strE);
    }
}

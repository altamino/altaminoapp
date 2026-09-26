package androidx.core.graphics;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import com.narvii.util.ws.WsMessage;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes9.dex */
@RequiresApi
@RestrictTo
public class TypefaceCompatApi29Impl extends TypefaceCompatBaseImpl {
    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    @Nullable
    public Typeface b(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i10) {
        try {
            FontFamily.Builder builder = null;
            for (FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry : fontFamilyFilesResourceEntry.a()) {
                try {
                    Font fontBuild = new Font.Builder(resources, fontFileResourceEntry.b()).setWeight(fontFileResourceEntry.e()).setSlant(fontFileResourceEntry.f() ? 1 : 0).setTtcIndex(fontFileResourceEntry.c()).setFontVariationSettings(fontFileResourceEntry.d()).build();
                    if (builder == null) {
                        builder = new FontFamily.Builder(fontBuild);
                    } else {
                        builder.addFont(fontBuild);
                    }
                } catch (IOException unused) {
                }
            }
            if (builder == null) {
                return null;
            }
            FontFamily fontFamilyBuild = builder.build();
            return new Typeface.CustomFallbackBuilder(fontFamilyBuild).setStyle(k(fontFamilyBuild, i10).getStyle()).build();
        } catch (Exception unused2) {
            return null;
        }
    }

    private Font k(@NonNull FontFamily fontFamily, int i10) {
        FontStyle fontStyle = new FontStyle((i10 & 1) != 0 ? 700 : WsMessage.LIVE_LAYER_USER_JOINED_EVENT, (i10 & 2) != 0 ? 1 : 0);
        Font font = fontFamily.getFont(0);
        int iL = l(fontStyle, font.getStyle());
        for (int i11 = 1; i11 < fontFamily.getSize(); i11++) {
            Font font2 = fontFamily.getFont(i11);
            int iL2 = l(fontStyle, font2.getStyle());
            if (iL2 < iL) {
                font = font2;
                iL = iL2;
            }
        }
        return font;
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    protected Typeface d(Context context, InputStream inputStream) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    @Nullable
    public Typeface e(Context context, Resources resources, int i10, String str, int i11) {
        try {
            Font fontBuild = new Font.Builder(resources, i10).build();
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(fontBuild).build()).setStyle(fontBuild.getStyle()).build();
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    protected FontsContractCompat.FontInfo i(FontsContractCompat.FontInfo[] fontInfoArr, int i10) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    private static int l(@NonNull FontStyle fontStyle, @NonNull FontStyle fontStyle2) {
        int i10;
        int iAbs = Math.abs(fontStyle.getWeight() - fontStyle2.getWeight()) / 100;
        if (fontStyle.getSlant() == fontStyle2.getSlant()) {
            i10 = 0;
        } else {
            i10 = 2;
        }
        return iAbs + i10;
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    @Nullable
    public Typeface c(Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontsContractCompat.FontInfo[] fontInfoArr, int i10) {
        ContentResolver contentResolver = context.getContentResolver();
        try {
            FontFamily.Builder builder = null;
            for (FontsContractCompat.FontInfo fontInfo : fontInfoArr) {
                try {
                    ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = contentResolver.openFileDescriptor(fontInfo.d(), "r", cancellationSignal);
                    if (parcelFileDescriptorOpenFileDescriptor == null) {
                        if (parcelFileDescriptorOpenFileDescriptor != null) {
                        }
                    } else {
                        try {
                            Font fontBuild = new Font.Builder(parcelFileDescriptorOpenFileDescriptor).setWeight(fontInfo.e()).setSlant(fontInfo.f() ? 1 : 0).setTtcIndex(fontInfo.c()).build();
                            if (builder == null) {
                                builder = new FontFamily.Builder(fontBuild);
                            } else {
                                builder.addFont(fontBuild);
                            }
                        } catch (Throwable th) {
                            try {
                                parcelFileDescriptorOpenFileDescriptor.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    }
                    parcelFileDescriptorOpenFileDescriptor.close();
                } catch (IOException unused) {
                }
            }
            if (builder == null) {
                return null;
            }
            FontFamily fontFamilyBuild = builder.build();
            return new Typeface.CustomFallbackBuilder(fontFamilyBuild).setStyle(k(fontFamilyBuild, i10).getStyle()).build();
        } catch (Exception unused2) {
            return null;
        }
    }
}

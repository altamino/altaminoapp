package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import androidx.annotation.AnyThread;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.flatbuffer.MetadataItem;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes7.dex */
@AnyThread
@RequiresApi
@RestrictTo
public class EmojiMetadata {
    public static final int HAS_GLYPH_ABSENT = 1;
    public static final int HAS_GLYPH_EXISTS = 2;
    public static final int HAS_GLYPH_UNKNOWN = 0;
    private static final ThreadLocal<MetadataItem> sMetadataItem = new ThreadLocal<>();
    private volatile int mHasGlyph = 0;
    private final int mIndex;

    @NonNull
    private final MetadataRepo mMetadataRepo;

    @Retention(RetentionPolicy.SOURCE)
    public @interface HasGlyph {
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public int d() {
        return this.mHasGlyph;
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public void k(boolean z6) {
        this.mHasGlyph = z6 ? 2 : 1;
    }

    private MetadataItem g() {
        ThreadLocal<MetadataItem> threadLocal = sMetadataItem;
        MetadataItem metadataItem = threadLocal.get();
        if (metadataItem == null) {
            metadataItem = new MetadataItem();
            threadLocal.set(metadataItem);
        }
        this.mMetadataRepo.d().k(metadataItem, this.mIndex);
        return metadataItem;
    }

    public void a(@NonNull Canvas canvas, float f, float f6, @NonNull Paint paint) {
        Typeface typefaceG = this.mMetadataRepo.g();
        Typeface typeface = paint.getTypeface();
        paint.setTypeface(typefaceG);
        canvas.drawText(this.mMetadataRepo.c(), this.mIndex * 2, 2, f, f6, paint);
        paint.setTypeface(typeface);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(", id:");
        sb.append(Integer.toHexString(f()));
        sb.append(", codepoints:");
        int iC = c();
        for (int i10 = 0; i10 < iC; i10++) {
            sb.append(Integer.toHexString(b(i10)));
            sb.append(" ");
        }
        return sb.toString();
    }

    EmojiMetadata(@NonNull MetadataRepo metadataRepo, @IntRange int i10) {
        this.mMetadataRepo = metadataRepo;
        this.mIndex = i10;
    }

    public int b(int i10) {
        return g().i(i10);
    }

    public int c() {
        return g().j();
    }

    public short e() {
        return g().l();
    }

    public int f() {
        return g().m();
    }

    public short h() {
        return g().n();
    }

    public short i() {
        return g().o();
    }

    public boolean j() {
        return g().k();
    }
}

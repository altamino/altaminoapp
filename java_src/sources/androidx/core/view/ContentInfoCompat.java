package androidx.core.view;

import android.content.ClipData;
import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Pair;
import android.view.ContentInfo;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import androidx.core.util.Predicate;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class ContentInfoCompat {
    public static final int FLAG_CONVERT_TO_PLAIN_TEXT = 1;
    public static final int SOURCE_APP = 0;
    public static final int SOURCE_AUTOFILL = 4;
    public static final int SOURCE_CLIPBOARD = 1;
    public static final int SOURCE_DRAG_AND_DROP = 3;
    public static final int SOURCE_INPUT_METHOD = 2;
    public static final int SOURCE_PROCESS_TEXT = 5;

    @NonNull
    private final Compat mCompat;

    public static final class Builder {

        @NonNull
        private final BuilderCompat mBuilderCompat;

        public Builder(@NonNull ContentInfoCompat contentInfoCompat) {
            if (Build.VERSION.SDK_INT >= 31) {
                this.mBuilderCompat = new BuilderCompat31Impl(contentInfoCompat);
            } else {
                this.mBuilderCompat = new BuilderCompatImpl(contentInfoCompat);
            }
        }

        @NonNull
        public ContentInfoCompat a() {
            return this.mBuilderCompat.build();
        }

        @NonNull
        public Builder b(@Nullable Bundle bundle) {
            this.mBuilderCompat.setExtras(bundle);
            return this;
        }

        @NonNull
        public Builder c(int i10) {
            this.mBuilderCompat.b(i10);
            return this;
        }

        @NonNull
        public Builder d(@Nullable Uri uri) {
            this.mBuilderCompat.a(uri);
            return this;
        }

        public Builder(@NonNull ClipData clipData, int i10) {
            if (Build.VERSION.SDK_INT >= 31) {
                this.mBuilderCompat = new BuilderCompat31Impl(clipData, i10);
            } else {
                this.mBuilderCompat = new BuilderCompatImpl(clipData, i10);
            }
        }
    }

    private interface BuilderCompat {
        void a(@Nullable Uri uri);

        void b(int i10);

        @NonNull
        ContentInfoCompat build();

        void setExtras(@Nullable Bundle bundle);
    }

    @RequiresApi
    private static final class BuilderCompat31Impl implements BuilderCompat {

        @NonNull
        private final ContentInfo.Builder mPlatformBuilder;

        BuilderCompat31Impl(@NonNull ClipData clipData, int i10) {
            this.mPlatformBuilder = e.a(clipData, i10);
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public void a(@Nullable Uri uri) {
            this.mPlatformBuilder.setLinkUri(uri);
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public void b(int i10) {
            this.mPlatformBuilder.setFlags(i10);
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        @NonNull
        public ContentInfoCompat build() {
            return new ContentInfoCompat(new Compat31Impl(this.mPlatformBuilder.build()));
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public void setExtras(@Nullable Bundle bundle) {
            this.mPlatformBuilder.setExtras(bundle);
        }

        BuilderCompat31Impl(@NonNull ContentInfoCompat contentInfoCompat) {
            g.a();
            this.mPlatformBuilder = f.a(contentInfoCompat.j());
        }
    }

    private static final class BuilderCompatImpl implements BuilderCompat {

        @NonNull
        ClipData mClip;

        @Nullable
        Bundle mExtras;
        int mFlags;

        @Nullable
        Uri mLinkUri;
        int mSource;

        BuilderCompatImpl(@NonNull ClipData clipData, int i10) {
            this.mClip = clipData;
            this.mSource = i10;
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public void a(@Nullable Uri uri) {
            this.mLinkUri = uri;
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public void b(int i10) {
            this.mFlags = i10;
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public void setExtras(@Nullable Bundle bundle) {
            this.mExtras = bundle;
        }

        BuilderCompatImpl(@NonNull ContentInfoCompat contentInfoCompat) {
            this.mClip = contentInfoCompat.c();
            this.mSource = contentInfoCompat.g();
            this.mFlags = contentInfoCompat.e();
            this.mLinkUri = contentInfoCompat.f();
            this.mExtras = contentInfoCompat.d();
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        @NonNull
        public ContentInfoCompat build() {
            return new ContentInfoCompat(new CompatImpl(this));
        }
    }

    private interface Compat {
        int a();

        @NonNull
        ClipData b();

        int c();

        @Nullable
        Uri d();

        @Nullable
        ContentInfo e();

        @Nullable
        Bundle getExtras();
    }

    @RequiresApi
    private static final class Compat31Impl implements Compat {

        @NonNull
        private final ContentInfo mWrapped;

        @Override // androidx.core.view.ContentInfoCompat.Compat
        @NonNull
        public ContentInfo e() {
            return this.mWrapped;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public int a() {
            return this.mWrapped.getFlags();
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        @NonNull
        public ClipData b() {
            return this.mWrapped.getClip();
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public int c() {
            return this.mWrapped.getSource();
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        @Nullable
        public Uri d() {
            return this.mWrapped.getLinkUri();
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        @Nullable
        public Bundle getExtras() {
            return this.mWrapped.getExtras();
        }

        @NonNull
        public String toString() {
            return "ContentInfoCompat{" + this.mWrapped + "}";
        }

        Compat31Impl(@NonNull ContentInfo contentInfo) {
            this.mWrapped = a.a(Preconditions.i(contentInfo));
        }
    }

    private static final class CompatImpl implements Compat {

        @NonNull
        private final ClipData mClip;

        @Nullable
        private final Bundle mExtras;
        private final int mFlags;

        @Nullable
        private final Uri mLinkUri;
        private final int mSource;

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public int a() {
            return this.mFlags;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        @NonNull
        public ClipData b() {
            return this.mClip;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public int c() {
            return this.mSource;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        @Nullable
        public Uri d() {
            return this.mLinkUri;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        @Nullable
        public ContentInfo e() {
            return null;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        @Nullable
        public Bundle getExtras() {
            return this.mExtras;
        }

        @NonNull
        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append("ContentInfoCompat{clip=");
            sb.append(this.mClip.getDescription());
            sb.append(", source=");
            sb.append(ContentInfoCompat.i(this.mSource));
            sb.append(", flags=");
            sb.append(ContentInfoCompat.b(this.mFlags));
            if (this.mLinkUri == null) {
                str = "";
            } else {
                str = ", hasLinkUri(" + this.mLinkUri.toString().length() + ")";
            }
            sb.append(str);
            sb.append(this.mExtras != null ? ", hasExtras" : "");
            sb.append("}");
            return sb.toString();
        }

        CompatImpl(BuilderCompatImpl builderCompatImpl) {
            this.mClip = (ClipData) Preconditions.i(builderCompatImpl.mClip);
            this.mSource = Preconditions.d(builderCompatImpl.mSource, 0, 5, "source");
            this.mFlags = Preconditions.h(builderCompatImpl.mFlags, 1);
            this.mLinkUri = builderCompatImpl.mLinkUri;
            this.mExtras = builderCompatImpl.mExtras;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface Flags {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface Source {
    }

    @NonNull
    static Pair<ClipData, ClipData> h(@NonNull ClipData clipData, @NonNull Predicate<ClipData.Item> predicate) {
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        for (int i10 = 0; i10 < clipData.getItemCount(); i10++) {
            ClipData.Item itemAt = clipData.getItemAt(i10);
            if (predicate.test(itemAt)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(itemAt);
            } else {
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                }
                arrayList2.add(itemAt);
            }
        }
        if (arrayList == null) {
            return Pair.create(null, clipData);
        }
        return arrayList2 == null ? Pair.create(clipData, null) : Pair.create(a(clipData.getDescription(), arrayList), a(clipData.getDescription(), arrayList2));
    }

    @RequiresApi
    private static final class Api31Impl {
        private Api31Impl() {
        }

        @NonNull
        @DoNotInline
        public static Pair<ContentInfo, ContentInfo> a(@NonNull ContentInfo contentInfo, @NonNull final java.util.function.Predicate<ClipData.Item> predicate) {
            ContentInfo contentInfo2;
            ClipData clip = contentInfo.getClip();
            if (clip.getItemCount() == 1) {
                boolean zTest = predicate.test(clip.getItemAt(0));
                if (zTest) {
                    contentInfo2 = contentInfo;
                } else {
                    contentInfo2 = null;
                }
                if (zTest) {
                    contentInfo = null;
                }
                return Pair.create(contentInfo2, contentInfo);
            }
            Objects.requireNonNull(predicate);
            Pair<ClipData, ClipData> pairH = ContentInfoCompat.h(clip, new Predicate() { // from class: androidx.core.view.b
                @Override // androidx.core.util.Predicate
                public final boolean test(Object obj) {
                    return predicate.test((ClipData.Item) obj);
                }
            });
            if (pairH.first == null) {
                return Pair.create(null, contentInfo);
            }
            if (pairH.second == null) {
                return Pair.create(contentInfo, null);
            }
            return Pair.create(new ContentInfo.Builder(contentInfo).setClip((ClipData) pairH.first).build(), new ContentInfo.Builder(contentInfo).setClip((ClipData) pairH.second).build());
        }
    }

    @NonNull
    static ClipData a(@NonNull ClipDescription clipDescription, @NonNull List<ClipData.Item> list) {
        ClipData clipData = new ClipData(new ClipDescription(clipDescription), list.get(0));
        for (int i10 = 1; i10 < list.size(); i10++) {
            clipData.addItem(list.get(i10));
        }
        return clipData;
    }

    @NonNull
    @RestrictTo
    static String b(int i10) {
        return (i10 & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i10);
    }

    @NonNull
    @RestrictTo
    static String i(int i10) {
        if (i10 == 0) {
            return "SOURCE_APP";
        }
        if (i10 == 1) {
            return "SOURCE_CLIPBOARD";
        }
        if (i10 == 2) {
            return "SOURCE_INPUT_METHOD";
        }
        if (i10 == 3) {
            return "SOURCE_DRAG_AND_DROP";
        }
        if (i10 != 4) {
            return i10 != 5 ? String.valueOf(i10) : "SOURCE_PROCESS_TEXT";
        }
        return "SOURCE_AUTOFILL";
    }

    @NonNull
    @RequiresApi
    public static ContentInfoCompat k(@NonNull ContentInfo contentInfo) {
        return new ContentInfoCompat(new Compat31Impl(contentInfo));
    }

    @NonNull
    public ClipData c() {
        return this.mCompat.b();
    }

    @Nullable
    public Bundle d() {
        return this.mCompat.getExtras();
    }

    public int e() {
        return this.mCompat.a();
    }

    @Nullable
    public Uri f() {
        return this.mCompat.d();
    }

    public int g() {
        return this.mCompat.c();
    }

    @NonNull
    @RequiresApi
    public ContentInfo j() {
        ContentInfo contentInfoE = this.mCompat.e();
        Objects.requireNonNull(contentInfoE);
        return a.a(contentInfoE);
    }

    @NonNull
    public String toString() {
        return this.mCompat.toString();
    }

    ContentInfoCompat(@NonNull Compat compat) {
        this.mCompat = compat;
    }
}

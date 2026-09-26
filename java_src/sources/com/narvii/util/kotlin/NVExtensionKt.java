package com.narvii.util.kotlin;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IdRes;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.android.volley.toolbox.ImageLoader;
import com.narvii.app.NVFragment;
import com.narvii.util.image.NVImageLoader;
import com.narvii.widget.NVImageView;
import e8.a;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes4.dex */
public final class NVExtensionKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.narvii.util.kotlin.NVExtensionKt$bind$1, reason: invalid class name */
    static final class AnonymousClass1<T> extends v implements a<T> {
        final /* synthetic */ int $res;
        final /* synthetic */ ViewGroup $this_bind;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ViewGroup viewGroup, int i10) {
            super(0);
            this.$this_bind = viewGroup;
            this.$res = i10;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TT; */
        @Override // e8.a
        public final View invoke() {
            return this.$this_bind.findViewById(this.$res);
        }
    }

    @NotNull
    public static final <T extends View> m<T> bind(@NotNull ViewGroup viewGroup, @IdRes int i10) {
        t.j(viewGroup, "<this>");
        return o.a(new AnonymousClass1(viewGroup, i10));
    }

    public static final /* synthetic */ <T extends NVFragment> T createIfAbsent(FragmentManager fragmentManager, Class<T> clz, Integer num, String tag) throws IllegalAccessException, InstantiationException {
        t.j(fragmentManager, "<this>");
        t.j(clz, "clz");
        t.j(tag, "tag");
        Fragment fragmentM0 = fragmentManager.m0(tag);
        if (fragmentM0 != null) {
            t.p(3, ExifInterface.GPS_DIRECTION_TRUE);
            if (fragmentM0 instanceof NVFragment) {
                return (T) fragmentM0;
            }
        }
        T tNewInstance = clz.newInstance();
        FragmentTransaction fragmentTransactionQ = fragmentManager.q();
        t.i(fragmentTransactionQ, "beginTransaction(...)");
        if (num != null) {
            fragmentTransactionQ.c(num.intValue(), tNewInstance, tag);
        } else {
            fragmentTransactionQ.e(tNewInstance, tag);
        }
        fragmentTransactionQ.k();
        t.g(tNewInstance);
        return tNewInstance;
    }

    public static /* synthetic */ NVFragment createIfAbsent$default(FragmentManager fragmentManager, Class clz, Integer num, String tag, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            num = null;
        }
        if ((i10 & 4) != 0) {
            tag = clz.getSimpleName();
            t.i(tag, "getSimpleName(...)");
        }
        t.j(fragmentManager, "<this>");
        t.j(clz, "clz");
        t.j(tag, "tag");
        Fragment fragmentM0 = fragmentManager.m0(tag);
        if (fragmentM0 != null) {
            t.p(3, ExifInterface.GPS_DIRECTION_TRUE);
            if (fragmentM0 instanceof NVFragment) {
                return (NVFragment) fragmentM0;
            }
        }
        Fragment fragment = (Fragment) clz.newInstance();
        FragmentTransaction fragmentTransactionQ = fragmentManager.q();
        t.i(fragmentTransactionQ, "beginTransaction(...)");
        if (num != null) {
            fragmentTransactionQ.c(num.intValue(), fragment, tag);
        } else {
            fragmentTransactionQ.e(fragment, tag);
        }
        fragmentTransactionQ.k();
        t.g(fragment);
        return (NVFragment) fragment;
    }

    public static final void loadImageForce(@NotNull NVImageView nVImageView, @NotNull String url) {
        t.j(nVImageView, "<this>");
        t.j(url, "url");
        ImageLoader imageLoader = nVImageView.getImageLoader();
        if (imageLoader instanceof NVImageLoader) {
            Rect rect = new Rect();
            nVImageView.getWindowVisibleDisplayFrame(rect);
            Bitmap local = ((NVImageLoader) imageLoader).getLocal(url, rect.width(), rect.height(), true);
            if (local != null) {
                nVImageView.setImageBitmap(local);
                return;
            }
        }
        nVImageView.setImageUrl(url);
    }
}

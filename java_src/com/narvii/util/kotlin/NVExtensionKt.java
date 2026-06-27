package com.narvii.util.kotlin;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.view.ViewGroup;
import com.android.volley.toolbox.ImageLoader;
import com.narvii.app.NVFragment;
import com.narvii.util.image.NVImageLoader;
import com.narvii.widget.NVImageView;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NVExtension.kt */
/* loaded from: classes3.dex */
public final class NVExtensionKt {
    public static final void loadImageForce(NVImageView loadImageForce, String url) {
        Intrinsics.checkParameterIsNotNull(loadImageForce, "$this$loadImageForce");
        Intrinsics.checkParameterIsNotNull(url, "url");
        ImageLoader imageLoader = loadImageForce.getImageLoader();
        if (imageLoader instanceof NVImageLoader) {
            Rect rect = new Rect();
            loadImageForce.getWindowVisibleDisplayFrame(rect);
            Bitmap local = ((NVImageLoader) imageLoader).getLocal(url, rect.width(), rect.height(), true);
            if (local != null) {
                loadImageForce.setImageBitmap(local);
                return;
            }
        }
        loadImageForce.setImageUrl(url);
    }

    public static /* synthetic */ NVFragment createIfAbsent$default(FragmentManager createIfAbsent, Class clz, Integer num, String tag, int i, Object obj) {
        if ((i & 2) != 0) {
            num = null;
        }
        if ((i & 4) != 0) {
            tag = clz.getSimpleName();
            Intrinsics.checkExpressionValueIsNotNull(tag, "clz.simpleName");
        }
        Intrinsics.checkParameterIsNotNull(createIfAbsent, "$this$createIfAbsent");
        Intrinsics.checkParameterIsNotNull(clz, "clz");
        Intrinsics.checkParameterIsNotNull(tag, "tag");
        if (createIfAbsent.findFragmentByTag(tag) != null) {
            Intrinsics.reifiedOperationMarker(3, "T");
            throw null;
        }
        Fragment fragment = (Fragment) clz.newInstance();
        FragmentTransaction fragmentTransactionBeginTransaction = createIfAbsent.beginTransaction();
        if (num != null) {
            fragmentTransactionBeginTransaction.add(num.intValue(), fragment, tag);
        } else {
            fragmentTransactionBeginTransaction.add(fragment, tag);
        }
        fragmentTransactionBeginTransaction.commitAllowingStateLoss();
        return (NVFragment) fragment;
    }

    public static final /* synthetic */ <T extends NVFragment> T createIfAbsent(FragmentManager createIfAbsent, Class<T> clz, Integer num, String tag) throws IllegalAccessException, InstantiationException {
        Intrinsics.checkParameterIsNotNull(createIfAbsent, "$this$createIfAbsent");
        Intrinsics.checkParameterIsNotNull(clz, "clz");
        Intrinsics.checkParameterIsNotNull(tag, "tag");
        if (createIfAbsent.findFragmentByTag(tag) != null) {
            Intrinsics.reifiedOperationMarker(3, "T");
            throw null;
        }
        T tNewInstance = clz.newInstance();
        FragmentTransaction fragmentTransactionBeginTransaction = createIfAbsent.beginTransaction();
        if (num != null) {
            fragmentTransactionBeginTransaction.add(num.intValue(), tNewInstance, tag);
        } else {
            fragmentTransactionBeginTransaction.add(tNewInstance, tag);
        }
        fragmentTransactionBeginTransaction.commitAllowingStateLoss();
        return tNewInstance;
    }

    public static final <T extends View> Lazy<T> bind(final ViewGroup bind, final int i) {
        Intrinsics.checkParameterIsNotNull(bind, "$this$bind");
        return LazyKt__LazyJVMKt.lazy(new Function0<T>() { // from class: com.narvii.util.kotlin.NVExtensionKt.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                return bind.findViewById(i);
            }
        });
    }
}

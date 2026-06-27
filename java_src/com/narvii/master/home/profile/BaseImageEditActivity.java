package com.narvii.master.home.profile;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewCompat;
import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.post.BasePostActivity;
import com.narvii.post.PostObject;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.widget.NVImageView;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BaseImageEditActivity.kt */
/* loaded from: classes3.dex */
public abstract class BaseImageEditActivity<T extends PostObject> extends BasePostActivity<T> {
    private HashMap _$_findViewCache;
    public NVImageView image;

    @Override // com.narvii.app.theme.NVThemeActivity
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeActivity
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.post.BasePostActivity
    public boolean isEdit() {
        return true;
    }

    @Override // com.narvii.post.BasePostActivity
    protected boolean supportPreview() {
        return false;
    }

    public final NVImageView getImage() {
        NVImageView nVImageView = this.image;
        if (nVImageView != null) {
            return nVImageView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("image");
        throw null;
    }

    public final void setImage(NVImageView nVImageView) {
        Intrinsics.checkParameterIsNotNull(nVImageView, "<set-?>");
        this.image = nVImageView;
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_edit_single_image);
        AndroidBug5497Workaround.assistActivity(this);
        setBackButtonDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_actionbar_close));
        setTitle("");
        View viewFindViewById = findViewById(R.id.image);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "findViewById(R.id.image)");
        this.image = (NVImageView) viewFindViewById;
    }

    @Override // com.narvii.app.NVActivity
    protected Drawable getActionBarCustomDrawable() {
        return new ColorDrawable(ViewCompat.MEASURED_STATE_MASK);
    }
}

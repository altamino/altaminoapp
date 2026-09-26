package com.narvii.master.home.profile;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import com.narvii.amino.master.R;
import com.narvii.post.BasePostActivity;
import com.narvii.post.PostObject;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.widget.NVImageView;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public abstract class BaseImageEditActivity<T extends PostObject> extends BasePostActivity<T> {
    public NVImageView image;

    @Override // com.narvii.post.BasePostActivity
    public boolean isEdit() {
        return true;
    }

    public final void setImage(@NotNull NVImageView nVImageView) {
        kotlin.jvm.internal.t.j(nVImageView, "<set-?>");
        this.image = nVImageView;
    }

    @Override // com.narvii.post.BasePostActivity
    protected boolean supportPreview() {
        return false;
    }

    @Override // com.narvii.app.NVActivity
    @NotNull
    protected Drawable getActionBarCustomDrawable() {
        return new ColorDrawable(ViewCompat.MEASURED_STATE_MASK);
    }

    @NotNull
    public final NVImageView getImage() {
        NVImageView nVImageView = this.image;
        if (nVImageView != null) {
            return nVImageView;
        }
        kotlin.jvm.internal.t.B("image");
        return null;
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_edit_single_image);
        AndroidBug5497Workaround.assistActivity(this);
        setBackButtonDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_actionbar_close));
        setTitle("");
        View viewFindViewById = findViewById(R.id.image);
        kotlin.jvm.internal.t.i(viewFindViewById, "findViewById(...)");
        setImage((NVImageView) viewFindViewById);
    }
}

package com.narvii.post;

import android.os.Bundle;
import com.narvii.amino.mastes.R;
import com.narvii.feed.BackgroundPost;
import com.narvii.media.MediaPickerFragment;
import com.narvii.model.Media;
import com.narvii.widget.BackgroundPickerView;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class BackgroundPostActivity<T extends BackgroundPost> extends DraftPostActivity<T> {
    protected BackgroundPickerView backgroundPickerView;

    protected int getBackgroundMediaPickerFlag() {
        return 0;
    }

    protected abstract void onPickOtherMediaResult(List<Media> list, Bundle bundle);

    @Override // com.narvii.post.BasePostActivity, com.narvii.media.MediaPickerFragment.OnPickColorResultListener
    public void onPickColorResult(int i, Bundle bundle) {
        super.onPickColorResult(i, bundle);
        ((BackgroundPost) this.post).setBackgroundColor(i);
        ((BackgroundPost) this.post).setBackgroundMediaList(null);
        updateView((BackgroundPostActivity<T>) this.post);
    }

    @Override // com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, android.app.Activity
    protected void onPostCreate(Bundle bundle) {
        this.backgroundPickerView = (BackgroundPickerView) findViewById(R.id.background_picker);
        super.onPostCreate(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity
    public void updateView(T t) {
        if (t == null) {
            return;
        }
        super.updateView((BackgroundPostActivity<T>) t);
        BackgroundPickerView backgroundPickerView = this.backgroundPickerView;
        if (backgroundPickerView != null) {
            backgroundPickerView.setBackgroundPost(t);
            BackgroundPickerView backgroundPickerView2 = this.backgroundPickerView;
            MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
            String str = this.draftId;
            backgroundPickerView2.setMediaPicker(mediaPickerFragment, str == null ? null : this.draftManager.getDir(str), getBackgroundMediaPickerFlag());
        }
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) {
        super.onPickMediaResult(list, bundle);
        T tSavePost = savePost();
        if (bundle == null) {
            return;
        }
        if (bundle.getInt("type") == 10000) {
            tSavePost.setBackgroundMediaList(list);
            tSavePost.setBackgroundColor(0);
        } else {
            onPickOtherMediaResult(list, bundle);
        }
        this.post = tSavePost;
        updateView((BackgroundPostActivity<T>) this.post);
    }
}

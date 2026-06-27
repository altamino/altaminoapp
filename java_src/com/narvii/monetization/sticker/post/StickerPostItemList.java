package com.narvii.monetization.sticker.post;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.narvii.amino.mastes.R;
import com.narvii.model.Media;
import com.narvii.model.Sticker;
import com.narvii.util.Callback;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.widget.DragSortLinearLayout;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class StickerPostItemList extends DragSortLinearLayout {
    View.OnClickListener onClickListener;
    OnIconClickListener onIconClickListener;
    OnStickerItemDeleteListener stickerItemDeleteListener;
    View thumbnailCell;

    interface OnIconClickListener {
        void onIconClicked(int i, View view);
    }

    interface OnStickerItemDeleteListener {
        void onStickerItemDeleted();
    }

    public void setOnIconClickListener(OnIconClickListener onIconClickListener) {
        this.onIconClickListener = onIconClickListener;
    }

    public void setStickerItemDeleteListener(OnStickerItemDeleteListener onStickerItemDeleteListener) {
        this.stickerItemDeleteListener = onStickerItemDeleteListener;
    }

    public StickerPostItemList(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.onClickListener = new View.OnClickListener() { // from class: com.narvii.monetization.sticker.post.StickerPostItemList.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                StickerPostItemList stickerPostItemList = StickerPostItemList.this;
                if (stickerPostItemList.onIconClickListener == null || stickerPostItemList.getChildCount() == 0) {
                    return;
                }
                for (int i = 0; i < StickerPostItemList.this.getChildCount(); i++) {
                    if (StickerPostItemList.this.getChildAt(i) == view) {
                        StickerPostItemList.this.onIconClickListener.onIconClicked(i, view);
                        return;
                    }
                }
            }
        };
    }

    public void updateStickerList(ArrayList<StickerPost> arrayList) {
        int i = 0;
        int size = arrayList == null ? 0 : arrayList.size();
        while (getChildCount() < size) {
            addView(LayoutInflater.from(getContext()).inflate(R.layout.post_sticker_item, (ViewGroup) this, false));
        }
        while (getChildCount() > size) {
            removeViewAt(getChildCount() - 1);
        }
        while (i < size) {
            View childAt = getChildAt(i);
            StickerPost stickerPost = i < size ? arrayList.get(i) : null;
            if (childAt instanceof StickerPostItem) {
                StickerPostItem stickerPostItem = (StickerPostItem) childAt;
                stickerPostItem.setStickerPost(stickerPost);
                stickerPostItem.setIconLayoutClickListener(this.onClickListener);
            }
            i++;
        }
    }

    public ArrayList<StickerPost> getStickerList() {
        ArrayList<StickerPost> arrayList = new ArrayList<>();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof StickerPostItem) {
                arrayList.add(((StickerPostItem) childAt).getStickerPost());
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        return arrayList;
    }

    private boolean isIndexValid(int i) {
        return i > -1 && i < getChildCount();
    }

    public void onPickStickerResult(int i, List<Sticker> list) {
        final Sticker sticker;
        if (list == null) {
            return;
        }
        for (final int i2 = 0; i2 < list.size() && (sticker = list.get(i2)) != null; i2++) {
            changeStickerPostItem(i, new Callback<StickerPostItem>() { // from class: com.narvii.monetization.sticker.post.StickerPostItemList.2
                @Override // com.narvii.util.Callback
                public void call(final StickerPostItem stickerPostItem) {
                    stickerPostItem.changeFromSticker(sticker);
                    if (i2 == 0) {
                        Utils.postDelayed(new Runnable() { // from class: com.narvii.monetization.sticker.post.StickerPostItemList.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                SoftKeyboard.showSoftKeyboard((EditText) stickerPostItem.findViewById(R.id.edit_name));
                            }
                        }, 100L);
                    }
                }
            });
        }
    }

    public void onPickMediaResult(int i, List<Media> list) {
        final Media media;
        if (list == null) {
            return;
        }
        for (final int i2 = 0; i2 < list.size() && (media = list.get(i2)) != null; i2++) {
            changeStickerPostItem(i, new Callback<StickerPostItem>() { // from class: com.narvii.monetization.sticker.post.StickerPostItemList.3
                @Override // com.narvii.util.Callback
                public void call(final StickerPostItem stickerPostItem) {
                    stickerPostItem.changeIcon(media.url);
                    if (i2 == 0) {
                        Utils.postDelayed(new Runnable() { // from class: com.narvii.monetization.sticker.post.StickerPostItemList.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                SoftKeyboard.showSoftKeyboard((EditText) stickerPostItem.findViewById(R.id.edit_name));
                            }
                        }, 100L);
                    }
                }
            });
        }
    }

    private void changeStickerPostItem(int i, Callback<StickerPostItem> callback) {
        final StickerPostItem stickerPostItem;
        if (i == -1) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.post_sticker_item, (ViewGroup) this, false);
            addView(viewInflate);
            if (viewInflate instanceof StickerPostItem) {
                StickerPostItem stickerPostItem2 = (StickerPostItem) viewInflate;
                if (callback != null) {
                    callback.call(stickerPostItem2);
                }
                stickerPostItem2.setIconLayoutClickListener(this.onClickListener);
            }
            if (this.thumbnailCell == null) {
                setThumbnailCell(0);
                return;
            }
            return;
        }
        if (!isIndexValid(i) || (stickerPostItem = (StickerPostItem) getChildAt(i)) == null || callback == null) {
            return;
        }
        callback.call(stickerPostItem);
        Utils.postDelayed(new Runnable() { // from class: com.narvii.monetization.sticker.post.StickerPostItemList.4
            @Override // java.lang.Runnable
            public void run() {
                SoftKeyboard.showSoftKeyboard((EditText) stickerPostItem.findViewById(R.id.edit_name));
            }
        }, 50L);
    }

    public void setThumbnailCell(int i) {
        if (!isIndexValid(i)) {
            if (getChildCount() == 0) {
                return;
            } else {
                i = 0;
            }
        }
        this.thumbnailCell = getChildAt(i);
        int i2 = 0;
        while (i2 < getChildCount()) {
            View childAt = getChildAt(i2);
            if (childAt instanceof StickerPostItem) {
                ((StickerPostItem) childAt).showThumbnail(i2 == i);
            }
            i2++;
        }
    }

    public int getThumbnailIndex() {
        View view = this.thumbnailCell;
        if (view == null) {
            return 0;
        }
        return Math.max(0, indexOfChild(view));
    }

    public void deleteItem(int i) {
        if (isIndexValid(i)) {
            boolean z = getChildAt(i) == this.thumbnailCell;
            removeViewAt(i);
            if (z) {
                this.thumbnailCell = null;
                setThumbnailCell(0);
            }
            OnStickerItemDeleteListener onStickerItemDeleteListener = this.stickerItemDeleteListener;
            if (onStickerItemDeleteListener != null) {
                onStickerItemDeleteListener.onStickerItemDeleted();
            }
        }
    }
}

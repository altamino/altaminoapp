package com.narvii.monetization.sticker.post;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.narvii.amino.master.R;
import com.narvii.model.Media;
import com.narvii.model.Sticker;
import com.narvii.util.Callback;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.widget.DragSortLinearLayout;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class StickerPostItemList extends DragSortLinearLayout {
    View.OnClickListener onClickListener;
    OnIconClickListener onIconClickListener;
    OnStickerItemDeleteListener stickerItemDeleteListener;
    View thumbnailCell;

    interface OnIconClickListener {
        void onIconClicked(int i10, View view);
    }

    interface OnStickerItemDeleteListener {
        void onStickerItemDeleted();
    }

    private void changeStickerPostItem(int i10, Callback<StickerPostItem> callback) {
        final StickerPostItem stickerPostItem;
        if (i10 != -1) {
            if (!isIndexValid(i10) || (stickerPostItem = (StickerPostItem) getChildAt(i10)) == null || callback == null) {
                return;
            }
            callback.call(stickerPostItem);
            Utils.postDelayed(new Runnable() { // from class: com.narvii.monetization.sticker.post.StickerPostItemList.4
                @Override // java.lang.Runnable
                public void run() {
                    SoftKeyboard.showSoftKeyboard((EditText) stickerPostItem.findViewById(R.id.edit_name));
                }
            }, 50L);
            return;
        }
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
        }
    }

    private boolean isIndexValid(int i10) {
        return i10 > -1 && i10 < getChildCount();
    }

    public void setOnIconClickListener(OnIconClickListener onIconClickListener) {
        this.onIconClickListener = onIconClickListener;
    }

    public void setStickerItemDeleteListener(OnStickerItemDeleteListener onStickerItemDeleteListener) {
        this.stickerItemDeleteListener = onStickerItemDeleteListener;
    }

    public void updateStickerList(ArrayList<StickerPost> arrayList) {
        int i10 = 0;
        int size = arrayList == null ? 0 : arrayList.size();
        while (getChildCount() < size) {
            addView(LayoutInflater.from(getContext()).inflate(R.layout.post_sticker_item, (ViewGroup) this, false));
        }
        while (getChildCount() > size) {
            removeViewAt(getChildCount() - 1);
        }
        while (i10 < size) {
            View childAt = getChildAt(i10);
            StickerPost stickerPost = i10 < size ? arrayList.get(i10) : null;
            if (childAt instanceof StickerPostItem) {
                StickerPostItem stickerPostItem = (StickerPostItem) childAt;
                stickerPostItem.setStickerPost(stickerPost);
                stickerPostItem.setIconLayoutClickListener(this.onClickListener);
            }
            i10++;
        }
    }

    public ArrayList<StickerPost> getStickerList() {
        ArrayList<StickerPost> arrayList = new ArrayList<>();
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt instanceof StickerPostItem) {
                arrayList.add(((StickerPostItem) childAt).getStickerPost());
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        return arrayList;
    }

    public int getThumbnailIndex() {
        View view = this.thumbnailCell;
        if (view == null) {
            return 0;
        }
        return Math.max(0, indexOfChild(view));
    }

    public void onPickMediaResult(int i10, List<Media> list) {
        final Media media;
        if (list == null) {
            return;
        }
        for (final int i11 = 0; i11 < list.size() && (media = list.get(i11)) != null; i11++) {
            changeStickerPostItem(i10, new Callback<StickerPostItem>() { // from class: com.narvii.monetization.sticker.post.StickerPostItemList.3
                @Override // com.narvii.util.Callback
                public void call(final StickerPostItem stickerPostItem) {
                    stickerPostItem.changeIcon(media.url);
                    if (i11 == 0) {
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

    public void onPickStickerResult(int i10, List<Sticker> list) {
        final Sticker sticker;
        if (list == null) {
            return;
        }
        for (final int i11 = 0; i11 < list.size() && (sticker = list.get(i11)) != null; i11++) {
            changeStickerPostItem(i10, new Callback<StickerPostItem>() { // from class: com.narvii.monetization.sticker.post.StickerPostItemList.2
                @Override // com.narvii.util.Callback
                public void call(final StickerPostItem stickerPostItem) {
                    stickerPostItem.changeFromSticker(sticker);
                    if (i11 == 0) {
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

    public StickerPostItemList(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.onClickListener = new View.OnClickListener() { // from class: com.narvii.monetization.sticker.post.StickerPostItemList.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                StickerPostItemList stickerPostItemList = StickerPostItemList.this;
                if (stickerPostItemList.onIconClickListener == null || stickerPostItemList.getChildCount() == 0) {
                    return;
                }
                for (int i10 = 0; i10 < StickerPostItemList.this.getChildCount(); i10++) {
                    if (StickerPostItemList.this.getChildAt(i10) == view) {
                        StickerPostItemList.this.onIconClickListener.onIconClicked(i10, view);
                        return;
                    }
                }
            }
        };
    }

    public void deleteItem(int i10) {
        boolean z6;
        if (isIndexValid(i10)) {
            if (getChildAt(i10) == this.thumbnailCell) {
                z6 = true;
            } else {
                z6 = false;
            }
            removeViewAt(i10);
            if (z6) {
                this.thumbnailCell = null;
                setThumbnailCell(0);
            }
            OnStickerItemDeleteListener onStickerItemDeleteListener = this.stickerItemDeleteListener;
            if (onStickerItemDeleteListener != null) {
                onStickerItemDeleteListener.onStickerItemDeleted();
            }
        }
    }

    public void setThumbnailCell(int i10) {
        boolean z6;
        if (!isIndexValid(i10)) {
            if (getChildCount() == 0) {
                return;
            } else {
                i10 = 0;
            }
        }
        this.thumbnailCell = getChildAt(i10);
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            if (childAt instanceof StickerPostItem) {
                StickerPostItem stickerPostItem = (StickerPostItem) childAt;
                if (i11 == i10) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                stickerPostItem.showThumbnail(z6);
            }
        }
    }
}

package com.narvii.chat;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.model.Media;
import com.narvii.theme.ThemePackService;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.widget.BlurImageView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.recycleview.NVRecyclerView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ChatBackgroundPickerRecycler extends NVRecyclerView implements View.OnClickListener {
    private static List<BackgroundEntry> defaultBackgrounds;
    private final BackgroundAdapter adapter;
    private Media currentSelect;
    private final LinearLayoutManager layout;
    private OnSelectBackgroundListener listener;
    private boolean shownPicker;
    private Media userUploaded;

    private class BackgroundAdapter extends RecyclerView.Adapter<BackgroundViewHolder> {
        private static final int VIEW_TYPE_NONE = 1;
        private static final int VIEW_TYPE_NORMAL = 2;
        private static final int VIEW_TYPE_USER_UPLOAD = 0;
        private static final int VIEW_TYPE_USER_UPLOAD_PREVIEW = 3;

        private BackgroundAdapter() {
        }

        private boolean showUserUploadPreview() {
            return ChatBackgroundPickerRecycler.this.shownPicker && ChatBackgroundPickerRecycler.this.userUploaded != null;
        }

        public BackgroundEntry getBackgroundEntryByPosition(int i10) {
            return (BackgroundEntry) ChatBackgroundPickerRecycler.defaultBackgrounds.get((i10 - (ChatBackgroundPickerRecycler.this.shownPicker ? 2 : 1)) - (showUserUploadPreview() ? 1 : 0));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i10) {
            if (i10 == 0 && ChatBackgroundPickerRecycler.this.shownPicker) {
                return 0;
            }
            if (i10 == 1 && showUserUploadPreview()) {
                return 3;
            }
            return (i10 - (ChatBackgroundPickerRecycler.this.shownPicker ? 1 : 0)) - (showUserUploadPreview() ? 1 : 0) == 0 ? 1 : 2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(BackgroundViewHolder backgroundViewHolder, int i10) {
            boolean z6;
            int itemViewType = getItemViewType(i10);
            if (itemViewType == 0) {
                return;
            }
            if (itemViewType == 1) {
                backgroundViewHolder.img.setVisibility(8);
                try {
                    backgroundViewHolder.blur.setImageDrawable2(ChatBackgroundPickerRecycler.this.getDefaultBackground());
                } catch (OutOfMemoryError unused) {
                }
                z6 = ChatBackgroundPickerRecycler.this.currentSelect == null;
                backgroundViewHolder.selected.setVisibility(z6 ? 0 : 8);
                backgroundViewHolder.blur.setVisibility(0);
                backgroundViewHolder.blur.setAlpha(z6 ? 1.0f : 0.8f);
                return;
            }
            if (itemViewType == 3) {
                backgroundViewHolder.img.setVisibility(0);
                try {
                    backgroundViewHolder.img.setImageMedia(ChatBackgroundPickerRecycler.this.userUploaded);
                } catch (OutOfMemoryError unused2) {
                }
                z6 = ChatBackgroundPickerRecycler.this.currentSelect != null && ChatBackgroundPickerRecycler.this.userUploaded.equals(ChatBackgroundPickerRecycler.this.currentSelect);
                backgroundViewHolder.selected.setVisibility(z6 ? 0 : 8);
                backgroundViewHolder.blur.setVisibility(8);
                backgroundViewHolder.img.setAlpha(z6 ? 1.0f : 0.8f);
                return;
            }
            backgroundViewHolder.img.setVisibility(0);
            BackgroundEntry backgroundEntryByPosition = getBackgroundEntryByPosition(i10);
            try {
                backgroundViewHolder.img.setImageMedia(backgroundEntryByPosition.backgroundMedia);
            } catch (OutOfMemoryError unused3) {
            }
            z6 = ChatBackgroundPickerRecycler.this.currentSelect != null && backgroundEntryByPosition.backgroundMedia.equals(ChatBackgroundPickerRecycler.this.currentSelect);
            backgroundViewHolder.selected.setVisibility(z6 ? 0 : 8);
            backgroundViewHolder.blur.setVisibility(8);
            backgroundViewHolder.img.setAlpha(z6 ? 1.0f : 0.8f);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public BackgroundViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
            if (i10 == 0) {
                ChatBackgroundPickerRecycler chatBackgroundPickerRecycler = ChatBackgroundPickerRecycler.this;
                return chatBackgroundPickerRecycler.new BackgroundViewHolder(LayoutInflater.from(chatBackgroundPickerRecycler.getContext()).inflate(R.layout.thread_background_item_upload, viewGroup, false));
            }
            ChatBackgroundPickerRecycler chatBackgroundPickerRecycler2 = ChatBackgroundPickerRecycler.this;
            return chatBackgroundPickerRecycler2.new BackgroundViewHolder(LayoutInflater.from(chatBackgroundPickerRecycler2.getContext()).inflate(R.layout.thread_background_item, viewGroup, false));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            int i10;
            int size = ChatBackgroundPickerRecycler.defaultBackgrounds.size();
            if (ChatBackgroundPickerRecycler.this.shownPicker) {
                i10 = 2;
            } else {
                i10 = 1;
            }
            return size + i10;
        }
    }

    private static class BackgroundEntry {
        private Media backgroundMedia;

        private BackgroundEntry(String str) {
            Media media = new Media();
            this.backgroundMedia = media;
            media.type = 100;
            media.url = str;
        }
    }

    private class BackgroundViewHolder extends RecyclerView.ViewHolder {
        private final BlurImageView blur;
        private final NVImageView img;
        private final View selected;

        public BackgroundViewHolder(View view) {
            super(view);
            this.img = (NVImageView) view.findViewById(R.id.chat_background_item_img);
            this.blur = (BlurImageView) view.findViewById(R.id.chat_background_item_blur);
            this.selected = view.findViewById(R.id.chat_background_item_selected);
            view.setOnClickListener(ChatBackgroundPickerRecycler.this);
        }
    }

    public interface OnSelectBackgroundListener {
        void onSelectBackground(Media media);

        void onStartPick();
    }

    private class SpaceItemDecoration extends RecyclerView.ItemDecoration {
        int mSpace;

        public SpaceItemDecoration(int i10) {
            this.mSpace = i10;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            super.getItemOffsets(rect, view, recyclerView, state);
            rect.right = this.mSpace;
            if (recyclerView.getChildAdapterPosition(view) == ChatBackgroundPickerRecycler.this.adapter.getItemCount() - 1) {
                if (Utils.isRtl()) {
                    rect.left = 0;
                } else {
                    rect.right = 0;
                }
            }
        }
    }

    public ChatBackgroundPickerRecycler(Context context) {
        this(context, null);
    }

    private int getPositionInList(Media media) {
        if (media == null) {
            return -1;
        }
        String str = media.url;
        for (int i10 = 0; i10 < defaultBackgrounds.size(); i10++) {
            BackgroundEntry backgroundEntry = defaultBackgrounds.get(i10);
            if (Utils.isEqualsNotNull(str, backgroundEntry.backgroundMedia == null ? null : backgroundEntry.backgroundMedia.url)) {
                return i10;
            }
        }
        return -1;
    }

    public Media getCurrentSelect() {
        return this.currentSelect;
    }

    public void setCurrentSelect(Media media) {
        setCurrentSelect(media, false);
    }

    public void setOnSelectBackgroundListener(OnSelectBackgroundListener onSelectBackgroundListener) {
        this.listener = onSelectBackgroundListener;
    }

    static {
        ArrayList arrayList = new ArrayList();
        defaultBackgrounds = arrayList;
        arrayList.add(new BackgroundEntry("http://static.altamino.top/default-chat-room-background/1_00.png"));
        defaultBackgrounds.add(new BackgroundEntry("http://static.altamino.top/default-chat-room-background/2_00.png"));
        defaultBackgrounds.add(new BackgroundEntry("http://static.altamino.top/default-chat-room-background/3_00.png"));
        defaultBackgrounds.add(new BackgroundEntry("http://static.altamino.top/default-chat-room-background/4_00.png"));
        defaultBackgrounds.add(new BackgroundEntry("http://static.altamino.top/default-chat-room-background/5_00.png"));
        defaultBackgrounds.add(new BackgroundEntry("http://static.altamino.top/default-chat-room-background/6_00.png"));
        defaultBackgrounds.add(new BackgroundEntry("http://static.altamino.top/default-chat-room-background/7_00.png"));
        defaultBackgrounds.add(new BackgroundEntry("http://static.altamino.top/default-chat-room-background/8_00.png"));
        defaultBackgrounds.add(new BackgroundEntry("http://static.altamino.top/default-chat-room-background/9_00.png"));
        defaultBackgrounds.add(new BackgroundEntry("http://static.altamino.top/default-chat-room-background/10_00.png"));
    }

    public ChatBackgroundPickerRecycler(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void setCurrentSelect(Media media, boolean z6) {
        this.currentSelect = media;
        int positionInList = getPositionInList(media);
        if (media != null && positionInList == -1) {
            this.userUploaded = media;
        }
        this.adapter.notifyDataSetChanged();
        if (z6) {
            smoothScrollToPosition(positionInList + 1);
        }
    }

    public ChatBackgroundPickerRecycler(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.narvii.amino.R.styleable.ChatBackgroundPickerRecycler, i10, 0);
        this.shownPicker = typedArrayObtainStyledAttributes.getBoolean(0, true);
        typedArrayObtainStyledAttributes.recycle();
        BackgroundAdapter backgroundAdapter = new BackgroundAdapter();
        this.adapter = backgroundAdapter;
        setAdapter(backgroundAdapter);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        this.layout = linearLayoutManager;
        setLayoutManager(linearLayoutManager);
        linearLayoutManager.setOrientation(0);
        addItemDecoration(new SpaceItemDecoration((int) Utils.dpToPx(getContext(), 10.0f)));
    }

    private Drawable themeBackground() {
        NVContext nVContext = Utils.getNVContext(getContext());
        if (nVContext == null) {
            return null;
        }
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        return ((ThemePackService) nVContext.getService("themePack")).getDrawable(((ConfigService) nVContext.getService("config")).getCommunityId(), ThemePackService.ThemeObject.BACKGROUND, Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels), Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels));
    }

    private Drawable themeColor() {
        NVContext nVContext = Utils.getNVContext(getContext());
        if (nVContext == null) {
            return null;
        }
        int themeColor = ((ThemePackService) nVContext.getService("themePack")).getThemeColor(((ConfigService) nVContext.getService("config")).getCommunityId());
        float[] fArr = new float[3];
        Color.colorToHSV(themeColor, fArr);
        fArr[2] = fArr[2] * 0.85f;
        return new ColorDrawable(Color.HSVToColor(fArr));
    }

    public Drawable getDefaultBackground() {
        Drawable drawableThemeBackground = themeBackground();
        if (drawableThemeBackground == null) {
            return themeColor();
        }
        return drawableThemeBackground;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int childAdapterPosition = getChildAdapterPosition(view);
        if (childAdapterPosition != -1 && childAdapterPosition < this.adapter.getItemCount() && childAdapterPosition >= 0) {
            int itemViewType = this.adapter.getItemViewType(childAdapterPosition);
            if (itemViewType == 0) {
                OnSelectBackgroundListener onSelectBackgroundListener = this.listener;
                if (onSelectBackgroundListener != null) {
                    onSelectBackgroundListener.onStartPick();
                    return;
                }
                return;
            }
            if (itemViewType == 1) {
                OnSelectBackgroundListener onSelectBackgroundListener2 = this.listener;
                if (onSelectBackgroundListener2 != null) {
                    onSelectBackgroundListener2.onSelectBackground(null);
                    return;
                }
                return;
            }
            if (itemViewType == 3) {
                OnSelectBackgroundListener onSelectBackgroundListener3 = this.listener;
                if (onSelectBackgroundListener3 != null) {
                    onSelectBackgroundListener3.onSelectBackground(this.userUploaded);
                    return;
                }
                return;
            }
            if (itemViewType == 2) {
                int[] iArr = new int[2];
                int measuredWidth = view.getMeasuredWidth();
                view.getLocationInWindow(iArr);
                if (iArr[0] + (measuredWidth / 2) > Utils.getScreenWidth(getContext())) {
                    scrollToPosition(childAdapterPosition);
                }
                BackgroundEntry backgroundEntryByPosition = this.adapter.getBackgroundEntryByPosition(childAdapterPosition);
                OnSelectBackgroundListener onSelectBackgroundListener4 = this.listener;
                if (onSelectBackgroundListener4 != null) {
                    onSelectBackgroundListener4.onSelectBackground(backgroundEntryByPosition.backgroundMedia);
                    return;
                }
                return;
            }
            return;
        }
        Log.w("FilterSelectorRecyclerView click with NO_POSITION");
    }
}

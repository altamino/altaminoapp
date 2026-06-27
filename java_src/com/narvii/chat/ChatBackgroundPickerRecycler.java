package com.narvii.chat;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.R;
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

/* loaded from: classes2.dex */
public class ChatBackgroundPickerRecycler extends NVRecyclerView implements View.OnClickListener {
    private static List<BackgroundEntry> defaultBackgrounds = new ArrayList();
    private final BackgroundAdapter adapter;
    private Media currentSelect;
    private final LinearLayoutManager layout;
    private OnSelectBackgroundListener listener;
    private boolean shownPicker;
    private Media userUploaded;

    public interface OnSelectBackgroundListener {
        void onSelectBackground(Media media);

        void onStartPick();
    }

    static {
        defaultBackgrounds.add(new BackgroundEntry("http://static.narvii.com/default-chat-room-background/1_00.png"));
        defaultBackgrounds.add(new BackgroundEntry("http://static.narvii.com/default-chat-room-background/2_00.png"));
        defaultBackgrounds.add(new BackgroundEntry("http://static.narvii.com/default-chat-room-background/3_00.png"));
        defaultBackgrounds.add(new BackgroundEntry("http://static.narvii.com/default-chat-room-background/4_00.png"));
        defaultBackgrounds.add(new BackgroundEntry("http://static.narvii.com/default-chat-room-background/5_00.png"));
        defaultBackgrounds.add(new BackgroundEntry("http://static.narvii.com/default-chat-room-background/6_00.png"));
        defaultBackgrounds.add(new BackgroundEntry("http://static.narvii.com/default-chat-room-background/7_00.png"));
        defaultBackgrounds.add(new BackgroundEntry("http://static.narvii.com/default-chat-room-background/8_00.png"));
        defaultBackgrounds.add(new BackgroundEntry("http://static.narvii.com/default-chat-room-background/9_00.png"));
        defaultBackgrounds.add(new BackgroundEntry("http://static.narvii.com/default-chat-room-background/10_00.png"));
    }

    public ChatBackgroundPickerRecycler(Context context) {
        this(context, null);
    }

    public ChatBackgroundPickerRecycler(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ChatBackgroundPickerRecycler(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ChatBackgroundPickerRecycler, i, 0);
        this.shownPicker = typedArrayObtainStyledAttributes.getBoolean(0, true);
        typedArrayObtainStyledAttributes.recycle();
        BackgroundAdapter backgroundAdapter = new BackgroundAdapter();
        this.adapter = backgroundAdapter;
        setAdapter(backgroundAdapter);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        this.layout = linearLayoutManager;
        setLayoutManager(linearLayoutManager);
        this.layout.setOrientation(0);
        addItemDecoration(new SpaceItemDecoration((int) Utils.dpToPx(getContext(), 10.0f)));
    }

    public void setOnSelectBackgroundListener(OnSelectBackgroundListener onSelectBackgroundListener) {
        this.listener = onSelectBackgroundListener;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int childAdapterPosition = getChildAdapterPosition(view);
        if (childAdapterPosition == -1 || childAdapterPosition >= this.adapter.getItemCount() || childAdapterPosition < 0) {
            Log.w("FilterSelectorRecyclerView click with NO_POSITION");
            return;
        }
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
            }
        }
    }

    public Media getCurrentSelect() {
        return this.currentSelect;
    }

    public void setCurrentSelect(Media media) {
        setCurrentSelect(media, false);
    }

    public void setCurrentSelect(Media media, boolean z) {
        this.currentSelect = media;
        int positionInList = getPositionInList(media);
        if (media != null && positionInList == -1) {
            this.userUploaded = media;
        }
        this.adapter.notifyDataSetChanged();
        if (z) {
            smoothScrollToPosition(positionInList + 1);
        }
    }

    private int getPositionInList(Media media) {
        if (media == null) {
            return -1;
        }
        String str = media.url;
        for (int i = 0; i < defaultBackgrounds.size(); i++) {
            BackgroundEntry backgroundEntry = defaultBackgrounds.get(i);
            if (Utils.isEqualsNotNull(str, backgroundEntry.backgroundMedia == null ? null : backgroundEntry.backgroundMedia.url)) {
                return i;
            }
        }
        return -1;
    }

    public Drawable getDefaultBackground() {
        Drawable drawableThemeBackground = themeBackground();
        return drawableThemeBackground == null ? themeColor() : drawableThemeBackground;
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

    private static class BackgroundEntry {
        private Media backgroundMedia;

        private BackgroundEntry(String str) {
            this.backgroundMedia = new Media();
            Media media = this.backgroundMedia;
            media.type = 100;
            media.url = str;
        }
    }

    private class SpaceItemDecoration extends RecyclerView.ItemDecoration {
        int mSpace;

        public SpaceItemDecoration(int i) {
            this.mSpace = i;
        }

        @Override // android.support.v7.widget.RecyclerView.ItemDecoration
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

    private class BackgroundViewHolder extends RecyclerView.ViewHolder {
        private final BlurImageView blur;
        private final NVImageView img;
        private final View selected;

        public BackgroundViewHolder(View view) {
            super(view);
            this.img = (NVImageView) view.findViewById(com.narvii.amino.mastes.R.id.chat_background_item_img);
            this.blur = (BlurImageView) view.findViewById(com.narvii.amino.mastes.R.id.chat_background_item_blur);
            this.selected = view.findViewById(com.narvii.amino.mastes.R.id.chat_background_item_selected);
            view.setOnClickListener(ChatBackgroundPickerRecycler.this);
        }
    }

    private class BackgroundAdapter extends RecyclerView.Adapter<BackgroundViewHolder> {
        private static final int VIEW_TYPE_NONE = 1;
        private static final int VIEW_TYPE_NORMAL = 2;
        private static final int VIEW_TYPE_USER_UPLOAD = 0;
        private static final int VIEW_TYPE_USER_UPLOAD_PREVIEW = 3;

        private BackgroundAdapter() {
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == 0 && ChatBackgroundPickerRecycler.this.shownPicker) {
                return 0;
            }
            if (i == 1 && showUserUploadPreview()) {
                return 3;
            }
            return (i - (ChatBackgroundPickerRecycler.this.shownPicker ? 1 : 0)) - (showUserUploadPreview() ? 1 : 0) == 0 ? 1 : 2;
        }

        private boolean showUserUploadPreview() {
            return ChatBackgroundPickerRecycler.this.shownPicker && ChatBackgroundPickerRecycler.this.userUploaded != null;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public BackgroundViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 0) {
                ChatBackgroundPickerRecycler chatBackgroundPickerRecycler = ChatBackgroundPickerRecycler.this;
                return chatBackgroundPickerRecycler.new BackgroundViewHolder(LayoutInflater.from(chatBackgroundPickerRecycler.getContext()).inflate(com.narvii.amino.mastes.R.layout.thread_background_item_upload, viewGroup, false));
            }
            ChatBackgroundPickerRecycler chatBackgroundPickerRecycler2 = ChatBackgroundPickerRecycler.this;
            return chatBackgroundPickerRecycler2.new BackgroundViewHolder(LayoutInflater.from(chatBackgroundPickerRecycler2.getContext()).inflate(com.narvii.amino.mastes.R.layout.thread_background_item, viewGroup, false));
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(BackgroundViewHolder backgroundViewHolder, int i) {
            boolean z;
            int itemViewType = getItemViewType(i);
            if (itemViewType == 0) {
                return;
            }
            if (itemViewType == 1) {
                backgroundViewHolder.img.setVisibility(8);
                try {
                    backgroundViewHolder.blur.setImageDrawable2(ChatBackgroundPickerRecycler.this.getDefaultBackground());
                } catch (OutOfMemoryError unused) {
                }
                z = ChatBackgroundPickerRecycler.this.currentSelect == null;
                backgroundViewHolder.selected.setVisibility(z ? 0 : 8);
                backgroundViewHolder.blur.setVisibility(0);
                backgroundViewHolder.blur.setAlpha(z ? 1.0f : 0.8f);
                return;
            }
            if (itemViewType == 3) {
                backgroundViewHolder.img.setVisibility(0);
                try {
                    backgroundViewHolder.img.setImageMedia(ChatBackgroundPickerRecycler.this.userUploaded);
                } catch (OutOfMemoryError unused2) {
                }
                z = ChatBackgroundPickerRecycler.this.currentSelect != null && ChatBackgroundPickerRecycler.this.userUploaded.equals(ChatBackgroundPickerRecycler.this.currentSelect);
                backgroundViewHolder.selected.setVisibility(z ? 0 : 8);
                backgroundViewHolder.blur.setVisibility(8);
                backgroundViewHolder.img.setAlpha(z ? 1.0f : 0.8f);
                return;
            }
            backgroundViewHolder.img.setVisibility(0);
            BackgroundEntry backgroundEntryByPosition = getBackgroundEntryByPosition(i);
            try {
                backgroundViewHolder.img.setImageMedia(backgroundEntryByPosition.backgroundMedia);
            } catch (OutOfMemoryError unused3) {
            }
            z = ChatBackgroundPickerRecycler.this.currentSelect != null && backgroundEntryByPosition.backgroundMedia.equals(ChatBackgroundPickerRecycler.this.currentSelect);
            backgroundViewHolder.selected.setVisibility(z ? 0 : 8);
            backgroundViewHolder.blur.setVisibility(8);
            backgroundViewHolder.img.setAlpha(z ? 1.0f : 0.8f);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ChatBackgroundPickerRecycler.defaultBackgrounds.size() + (ChatBackgroundPickerRecycler.this.shownPicker ? 2 : 1);
        }

        public BackgroundEntry getBackgroundEntryByPosition(int i) {
            return (BackgroundEntry) ChatBackgroundPickerRecycler.defaultBackgrounds.get((i - (ChatBackgroundPickerRecycler.this.shownPicker ? 2 : 1)) - (showUserUploadPreview() ? 1 : 0));
        }
    }
}

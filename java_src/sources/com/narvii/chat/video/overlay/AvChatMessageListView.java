package com.narvii.chat.video.overlay;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.model.ChatMessage;
import com.narvii.model.User;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.monetization.sticker.StickerHelper;
import com.narvii.util.Utils;
import com.narvii.util.VoiceMessageUtils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.recycleview.NVRecyclerView;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class AvChatMessageListView extends NVRecyclerView {
    private static final int MAX_COUNT = 1000;
    private static final int NICKNAME_ELLIPSIS_THRESHHOLD = 15;
    private static final int TYPE_GENERAL_IMAGE = 1;
    private static final int TYPE_GENERAL_TEXT = 0;
    private static final int TYPE_IGNORE = 2;
    private static final int TYPE_WELCOME_MESSAGE = 3;
    private static final int[] colors = {R.color.community_tag_color_1_checked, R.color.community_tag_color_2_checked, R.color.community_tag_color_3_checked, R.color.community_tag_color_4_checked, R.color.community_tag_color_5_checked};
    MyAdapter chatRecyclerAdapter;
    LayoutInflater inflater;
    ItemClickListener itemClickListener;
    HashSet<String> messageIds;
    List<ChatMessage> messageList;

    private class ImageViewHolder extends RecyclerView.ViewHolder {
        NVImageView img;
        TextView nickName;

        public ImageViewHolder(View view) {
            super(view);
            this.nickName = (TextView) view.findViewById(R.id.nickname);
            this.img = (NVImageView) view.findViewById(R.id.image);
        }
    }

    public interface ItemClickListener {
        void onItemClicked(ChatMessage chatMessage);
    }

    private class MyAdapter extends RecyclerView.Adapter {
        StickerHelper stickerHelper;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
            if (i10 == 1) {
                return AvChatMessageListView.this.new ImageViewHolder(AvChatMessageListView.this.inflater.inflate(R.layout.item_channel_message_image, viewGroup, false));
            }
            if (i10 == 0) {
                return AvChatMessageListView.this.new TextViewHolder(AvChatMessageListView.this.inflater.inflate(R.layout.item_channel_message, viewGroup, false));
            }
            if (i10 != 3) {
                return null;
            }
            return AvChatMessageListView.this.new WelcomeViewHolder(AvChatMessageListView.this.inflater.inflate(R.layout.item_channel_welcome_message, viewGroup, false));
        }

        public MyAdapter() {
            this.stickerHelper = new StickerHelper(Utils.getNVContext(AvChatMessageListView.this.getContext()));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return AvChatMessageListView.this.messageList.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i10) {
            ChatMessage chatMessage = AvChatMessageListView.this.messageList.get(i10);
            int i11 = chatMessage.type;
            if (i11 == 0) {
                return chatMessage.hasMedia() ? 1 : 0;
            }
            if (i11 == 2) {
                return 0;
            }
            if (i11 == 65282) {
                return 3;
            }
            return i11 == 3 ? 1 : 2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
            String str;
            final ChatMessage chatMessage = AvChatMessageListView.this.messageList.get(i10);
            CommunityConfigHelper communityConfigHelper = new CommunityConfigHelper(Utils.getNVContext(AvChatMessageListView.this.getContext()));
            if (viewHolder instanceof TextViewHolder) {
                User user = chatMessage.author;
                String strEllipticalNickname = user != null ? user.ellipticalNickname(15) : null;
                if (chatMessage.type == 2) {
                    str = strEllipticalNickname + " " + VoiceMessageUtils.getVoiceMessageSummary(AvChatMessageListView.this.getContext(), chatMessage.getDuration());
                    ((TextViewHolder) viewHolder).tvContent.setTextColor(-8289919);
                } else {
                    str = strEllipticalNickname + " " + chatMessage.content;
                    ((TextViewHolder) viewHolder).tvContent.setTextColor(ViewCompat.MEASURED_STATE_MASK);
                }
                SpannableString spannableString = new SpannableString(str);
                if (strEllipticalNickname != null) {
                    spannableString.setSpan(new ForegroundColorSpan(ContextCompat.getColor(AvChatMessageListView.this.getContext(), AvChatMessageListView.colors[AvChatMessageListView.this.getRandomIndex(chatMessage.author.nickname())])), 0, strEllipticalNickname.length(), 33);
                }
                TextViewHolder textViewHolder = (TextViewHolder) viewHolder;
                textViewHolder.tvContent.setText(spannableString);
                textViewHolder.tvContent.setEllipsize(TextUtils.TruncateAt.END);
                textViewHolder.tvContent.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.overlay.AvChatMessageListView.MyAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        ItemClickListener itemClickListener = AvChatMessageListView.this.itemClickListener;
                        if (itemClickListener != null) {
                            itemClickListener.onItemClicked(chatMessage);
                        }
                    }
                });
                textViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.overlay.AvChatMessageListView.MyAdapter.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        ItemClickListener itemClickListener = AvChatMessageListView.this.itemClickListener;
                        if (itemClickListener != null) {
                            itemClickListener.onItemClicked(chatMessage);
                        }
                    }
                });
                User user2 = chatMessage.author;
                if (user2 == null || !user2.isSubscribeMemberShip() || !communityConfigHelper.isPremiumFeatureEnabled()) {
                    textViewHolder.tvContent.setCompoundDrawablePadding(0);
                    textViewHolder.tvContent.setCompoundDrawables(null, null, null, null);
                    return;
                } else if (Utils.isRtl()) {
                    textViewHolder.tvContent.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, AvChatMessageListView.this.getResources().getDrawable(R.drawable.ic_badge_membership), (Drawable) null);
                    textViewHolder.tvContent.setCompoundDrawablePadding((int) Utils.dpToPx(AvChatMessageListView.this.getContext(), 8.0f));
                    return;
                } else {
                    textViewHolder.tvContent.setCompoundDrawablesWithIntrinsicBounds(AvChatMessageListView.this.getResources().getDrawable(R.drawable.ic_badge_membership), (Drawable) null, (Drawable) null, (Drawable) null);
                    textViewHolder.tvContent.setCompoundDrawablePadding((int) Utils.dpToPx(AvChatMessageListView.this.getContext(), 8.0f));
                    return;
                }
            }
            if (viewHolder instanceof ImageViewHolder) {
                int color = ContextCompat.getColor(AvChatMessageListView.this.getContext(), AvChatMessageListView.colors[AvChatMessageListView.this.getRandomIndex(chatMessage.author.nickname())]);
                ImageViewHolder imageViewHolder = (ImageViewHolder) viewHolder;
                imageViewHolder.nickName.setText(chatMessage.author.nickname());
                imageViewHolder.nickName.setTextColor(color);
                if (chatMessage.isStickerMessage()) {
                    imageViewHolder.img.setScaleType(ImageView.ScaleType.FIT_CENTER);
                    imageViewHolder.img.setImageUrl(this.stickerHelper.getStickerMessageImageUrl(chatMessage));
                } else {
                    imageViewHolder.img.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    imageViewHolder.img.setImageMedia(chatMessage.media());
                }
                imageViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.overlay.AvChatMessageListView.MyAdapter.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        ItemClickListener itemClickListener = AvChatMessageListView.this.itemClickListener;
                        if (itemClickListener != null) {
                            itemClickListener.onItemClicked(chatMessage);
                        }
                    }
                });
                User user3 = chatMessage.author;
                if (user3 == null || !user3.isSubscribeMemberShip() || !communityConfigHelper.isPremiumFeatureEnabled()) {
                    imageViewHolder.nickName.setCompoundDrawablePadding(0);
                    imageViewHolder.nickName.setCompoundDrawables(null, null, null, null);
                    return;
                } else if (Utils.isRtl()) {
                    imageViewHolder.nickName.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, AvChatMessageListView.this.getResources().getDrawable(R.drawable.ic_badge_membership), (Drawable) null);
                    imageViewHolder.nickName.setCompoundDrawablePadding((int) Utils.dpToPx(AvChatMessageListView.this.getContext(), 8.0f));
                    return;
                } else {
                    imageViewHolder.nickName.setCompoundDrawablesWithIntrinsicBounds(AvChatMessageListView.this.getResources().getDrawable(R.drawable.ic_badge_membership), (Drawable) null, (Drawable) null, (Drawable) null);
                    imageViewHolder.nickName.setCompoundDrawablePadding((int) Utils.dpToPx(AvChatMessageListView.this.getContext(), 8.0f));
                    return;
                }
            }
            if (viewHolder instanceof WelcomeViewHolder) {
                SpannableString spannableString2 = new SpannableString(" " + chatMessage.content);
                spannableString2.setSpan(new ImageSpan(AvChatMessageListView.this.getContext(), R.drawable.ic_welcome_notice, 1), 0, 1, 33);
                User user4 = chatMessage.author;
                String strNickname = user4 != null ? user4.nickname() : null;
                if (strNickname != null) {
                    spannableString2.setSpan(new ForegroundColorSpan(ContextCompat.getColor(AvChatMessageListView.this.getContext(), AvChatMessageListView.colors[AvChatMessageListView.this.getRandomIndex(strNickname)])), 1, strNickname.length() + 1, 33);
                }
                WelcomeViewHolder welcomeViewHolder = (WelcomeViewHolder) viewHolder;
                welcomeViewHolder.tvContent.setText(spannableString2);
                User user5 = chatMessage.author;
                if (user5 == null || !user5.isSubscribeMemberShip() || !communityConfigHelper.isPremiumFeatureEnabled()) {
                    welcomeViewHolder.tvContent.setCompoundDrawablePadding(0);
                    welcomeViewHolder.tvContent.setCompoundDrawables(null, null, null, null);
                } else if (Utils.isRtl()) {
                    welcomeViewHolder.tvContent.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, AvChatMessageListView.this.getResources().getDrawable(R.drawable.ic_badge_membership), (Drawable) null);
                    welcomeViewHolder.tvContent.setCompoundDrawablePadding((int) Utils.dpToPx(AvChatMessageListView.this.getContext(), 8.0f));
                } else {
                    welcomeViewHolder.tvContent.setCompoundDrawablesWithIntrinsicBounds(AvChatMessageListView.this.getResources().getDrawable(R.drawable.ic_badge_membership), (Drawable) null, (Drawable) null, (Drawable) null);
                    welcomeViewHolder.tvContent.setCompoundDrawablePadding((int) Utils.dpToPx(AvChatMessageListView.this.getContext(), 8.0f));
                }
            }
        }
    }

    class MyLinearLayoutManager extends LinearLayoutManager {
        public MyLinearLayoutManager(Context context) {
            super(context);
        }

        public MyLinearLayoutManager(Context context, int i10, boolean z6) {
            super(context, i10, z6);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
            try {
                super.onLayoutChildren(recycler, state);
            } catch (Exception unused) {
            }
        }
    }

    private class TextViewHolder extends RecyclerView.ViewHolder {
        public TextView tvContent;

        public TextViewHolder(View view) {
            super(view);
            this.tvContent = (TextView) view.findViewById(R.id.content);
        }
    }

    private class WelcomeViewHolder extends RecyclerView.ViewHolder {
        public TextView tvContent;

        public WelcomeViewHolder(View view) {
            super(view);
            this.tvContent = (TextView) view.findViewById(R.id.content);
        }
    }

    public AvChatMessageListView(Context context) {
        this(context, null);
    }

    public List<ChatMessage> getMessageList() {
        return this.messageList;
    }

    public void setItemClickListener(ItemClickListener itemClickListener) {
        this.itemClickListener = itemClickListener;
    }

    public AvChatMessageListView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.messageList = new ArrayList();
        this.messageIds = new HashSet<>();
        this.inflater = LayoutInflater.from(context);
        this.chatRecyclerAdapter = new MyAdapter();
        setLayoutManager(new MyLinearLayoutManager(getContext(), 1, true));
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setRemoveDuration(400L);
        setItemAnimator(defaultItemAnimator);
        setAdapter(this.chatRecyclerAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRandomIndex(String str) {
        if (str == null) {
            return 0;
        }
        return Math.abs(str.hashCode() % colors.length);
    }

    public void addNewMessage(ChatMessage chatMessage) {
        List<ChatMessage> list;
        int i10 = chatMessage.type;
        if (i10 == 2 || i10 == 65282 || ((i10 == 0 || i10 == 3) && !this.messageIds.contains(chatMessage.messageId) && (!this.messageIds.contains(String.valueOf(chatMessage.getClientRefIdTmp())) || chatMessage._status == 0))) {
            if (!this.messageIds.contains(String.valueOf(chatMessage.getClientRefIdTmp())) || (list = this.messageList) == null) {
                this.messageList.add(0, chatMessage);
                String str = chatMessage.messageId;
                if (str != null) {
                    this.messageIds.add(str);
                }
                if (chatMessage.getClientRefIdTmp() != 0) {
                    this.messageIds.add(String.valueOf(chatMessage.getClientRefIdTmp()));
                }
            } else {
                for (ChatMessage chatMessage2 : list) {
                    if (chatMessage2.getClientRefIdTmp() == chatMessage.getClientRefIdTmp()) {
                        chatMessage2.mediaValue = chatMessage.mediaValue;
                    }
                }
            }
        }
        while (this.messageList.size() > 1000) {
            List<ChatMessage> list2 = this.messageList;
            list2.remove(list2.size() - 1);
        }
        this.chatRecyclerAdapter.notifyDataSetChanged();
        smoothScrollToPosition(0);
    }
}

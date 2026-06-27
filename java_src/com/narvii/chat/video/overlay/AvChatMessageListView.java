package com.narvii.chat.video.overlay;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
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
import com.narvii.amino.mastes.R;
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

/* loaded from: classes2.dex */
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

    public interface ItemClickListener {
        void onItemClicked(ChatMessage chatMessage);
    }

    public void setItemClickListener(ItemClickListener itemClickListener) {
        this.itemClickListener = itemClickListener;
    }

    public AvChatMessageListView(Context context) {
        this(context, null);
    }

    public AvChatMessageListView(Context context, AttributeSet attributeSet) {
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

    private class MyAdapter extends RecyclerView.Adapter {
        StickerHelper stickerHelper;

        public MyAdapter() {
            this.stickerHelper = new StickerHelper(Utils.getNVContext(AvChatMessageListView.this.getContext()));
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            ChatMessage chatMessage = AvChatMessageListView.this.messageList.get(i);
            int i2 = chatMessage.type;
            if (i2 == 0) {
                return chatMessage.hasMedia() ? 1 : 0;
            }
            if (i2 == 2) {
                return 0;
            }
            if (i2 == 65282) {
                return 3;
            }
            return i2 == 3 ? 1 : 2;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 1) {
                return AvChatMessageListView.this.new ImageViewHolder(AvChatMessageListView.this.inflater.inflate(R.layout.item_channel_message_image, viewGroup, false));
            }
            if (i == 0) {
                return AvChatMessageListView.this.new TextViewHolder(AvChatMessageListView.this.inflater.inflate(R.layout.item_channel_message, viewGroup, false));
            }
            if (i != 3) {
                return null;
            }
            return AvChatMessageListView.this.new WelcomeViewHolder(AvChatMessageListView.this.inflater.inflate(R.layout.item_channel_welcome_message, viewGroup, false));
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            String str;
            final ChatMessage chatMessage = AvChatMessageListView.this.messageList.get(i);
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
                    spannableString.setSpan(new ForegroundColorSpan(ContextCompat.getColor(AvChatMessageListView.this.getContext(), AvChatMessageListView.colors[AvChatMessageListView.this.getRandomIndex(chatMessage.author.nickname())])), 0, strEllipticalNickname != null ? strEllipticalNickname.length() : 0, 33);
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
                if (user2 != null && user2.isSubscribeMemberShip() && communityConfigHelper.isPremiumFeatureEnabled()) {
                    if (Utils.isRtl()) {
                        textViewHolder.tvContent.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, AvChatMessageListView.this.getResources().getDrawable(R.drawable.ic_badge_membership), (Drawable) null);
                        textViewHolder.tvContent.setCompoundDrawablePadding((int) Utils.dpToPx(AvChatMessageListView.this.getContext(), 8.0f));
                        return;
                    } else {
                        textViewHolder.tvContent.setCompoundDrawablesWithIntrinsicBounds(AvChatMessageListView.this.getResources().getDrawable(R.drawable.ic_badge_membership), (Drawable) null, (Drawable) null, (Drawable) null);
                        textViewHolder.tvContent.setCompoundDrawablePadding((int) Utils.dpToPx(AvChatMessageListView.this.getContext(), 8.0f));
                        return;
                    }
                }
                textViewHolder.tvContent.setCompoundDrawablePadding(0);
                textViewHolder.tvContent.setCompoundDrawables(null, null, null, null);
                return;
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
                if (user3 != null && user3.isSubscribeMemberShip() && communityConfigHelper.isPremiumFeatureEnabled()) {
                    if (Utils.isRtl()) {
                        imageViewHolder.nickName.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, AvChatMessageListView.this.getResources().getDrawable(R.drawable.ic_badge_membership), (Drawable) null);
                        imageViewHolder.nickName.setCompoundDrawablePadding((int) Utils.dpToPx(AvChatMessageListView.this.getContext(), 8.0f));
                        return;
                    } else {
                        imageViewHolder.nickName.setCompoundDrawablesWithIntrinsicBounds(AvChatMessageListView.this.getResources().getDrawable(R.drawable.ic_badge_membership), (Drawable) null, (Drawable) null, (Drawable) null);
                        imageViewHolder.nickName.setCompoundDrawablePadding((int) Utils.dpToPx(AvChatMessageListView.this.getContext(), 8.0f));
                        return;
                    }
                }
                imageViewHolder.nickName.setCompoundDrawablePadding(0);
                imageViewHolder.nickName.setCompoundDrawables(null, null, null, null);
                return;
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
                if (user5 != null && user5.isSubscribeMemberShip() && communityConfigHelper.isPremiumFeatureEnabled()) {
                    if (Utils.isRtl()) {
                        welcomeViewHolder.tvContent.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, AvChatMessageListView.this.getResources().getDrawable(R.drawable.ic_badge_membership), (Drawable) null);
                        welcomeViewHolder.tvContent.setCompoundDrawablePadding((int) Utils.dpToPx(AvChatMessageListView.this.getContext(), 8.0f));
                        return;
                    } else {
                        welcomeViewHolder.tvContent.setCompoundDrawablesWithIntrinsicBounds(AvChatMessageListView.this.getResources().getDrawable(R.drawable.ic_badge_membership), (Drawable) null, (Drawable) null, (Drawable) null);
                        welcomeViewHolder.tvContent.setCompoundDrawablePadding((int) Utils.dpToPx(AvChatMessageListView.this.getContext(), 8.0f));
                        return;
                    }
                }
                welcomeViewHolder.tvContent.setCompoundDrawablePadding(0);
                welcomeViewHolder.tvContent.setCompoundDrawables(null, null, null, null);
            }
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return AvChatMessageListView.this.messageList.size();
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

    private class ImageViewHolder extends RecyclerView.ViewHolder {
        NVImageView img;
        TextView nickName;

        public ImageViewHolder(View view) {
            super(view);
            this.nickName = (TextView) view.findViewById(R.id.nickname);
            this.img = (NVImageView) view.findViewById(R.id.image);
        }
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
        int i = chatMessage.type;
        if (i == 2 || i == 65282 || ((i == 0 || i == 3) && !this.messageIds.contains(chatMessage.messageId) && (!this.messageIds.contains(String.valueOf(chatMessage.clientRefId)) || chatMessage._status == 0))) {
            if (this.messageIds.contains(String.valueOf(chatMessage.clientRefId)) && (list = this.messageList) != null) {
                for (ChatMessage chatMessage2 : list) {
                    if (chatMessage2.clientRefId == chatMessage.clientRefId) {
                        chatMessage2.mediaValue = chatMessage.mediaValue;
                    }
                }
            } else {
                this.messageList.add(0, chatMessage);
                String str = chatMessage.messageId;
                if (str != null) {
                    this.messageIds.add(str);
                }
                int i2 = chatMessage.clientRefId;
                if (i2 != 0) {
                    this.messageIds.add(String.valueOf(i2));
                }
            }
        }
        while (this.messageList.size() > 1000) {
            this.messageList.remove(r6.size() - 1);
        }
        this.chatRecyclerAdapter.notifyDataSetChanged();
        smoothScrollToPosition(0);
    }

    public List<ChatMessage> getMessageList() {
        return this.messageList;
    }

    class MyLinearLayoutManager extends LinearLayoutManager {
        public MyLinearLayoutManager(Context context) {
            super(context);
        }

        public MyLinearLayoutManager(Context context, int i, boolean z) {
            super(context, i, z);
        }

        @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
        public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
            try {
                super.onLayoutChildren(recycler, state);
            } catch (Exception unused) {
            }
        }
    }
}

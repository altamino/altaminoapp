.class Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AvChatMessageListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/overlay/AvChatMessageListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

.field final synthetic this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/video/overlay/AvChatMessageListView;)V
    .locals 1

    .line 87
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 88
    new-instance v0, Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    iget-object v0, v0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->messageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    iget-object v0, v0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->messageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatMessage;

    .line 94
    iget v0, p1, Lcom/narvii/model/ChatMessage;->type:I

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->hasMedia()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x2

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const v1, 0xff02

    const/4 v2, 0x3

    if-ne v0, v1, :cond_2

    return v2

    :cond_2
    if-ne v0, v2, :cond_3

    const/4 p1, 0x1

    :cond_3
    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 13

    .line 124
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    iget-object v0, v0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->messageList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/ChatMessage;

    .line 125
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 126
    instance-of v1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;

    const/16 v2, 0x21

    const-string v3, " "

    const/high16 v4, 0x41000000    # 8.0f

    const v5, 0x7f0802b6

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v1, :cond_6

    .line 127
    iget-object v1, p2, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    if-eqz v1, :cond_0

    const/16 v8, 0xf

    invoke-virtual {v1, v8}, Lcom/narvii/model/User;->ellipticalNickname(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v7

    .line 129
    :goto_0
    iget v8, p2, Lcom/narvii/model/ChatMessage;->type:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 130
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p2}, Lcom/narvii/model/ChatMessage;->getDuration()I

    move-result v9

    invoke-static {v3, v9}, Lcom/narvii/util/VoiceMessageUtils;->getVoiceMessageSummary(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    move-object v8, p1

    check-cast v8, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;

    iget-object v8, v8, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;->tvContent:Landroid/widget/TextView;

    const v9, -0x7e7e7f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 133
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 134
    move-object v8, p1

    check-cast v8, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;

    iget-object v8, v8, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;->tvContent:Landroid/widget/TextView;

    const/high16 v9, -0x1000000

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    :goto_1
    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_3

    if-eqz v1, :cond_2

    .line 138
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 139
    :goto_2
    iget-object v3, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->access$000()[I

    move-result-object v9

    iget-object v10, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    iget-object v11, p2, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    invoke-virtual {v11}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->access$100(Lcom/narvii/chat/video/overlay/AvChatMessageListView;Ljava/lang/String;)I

    move-result v10

    aget v9, v9, v10

    invoke-static {v3, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 140
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v9, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v8, v9, v6, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 142
    :cond_3
    check-cast p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;

    iget-object v1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;->tvContent:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 144
    iget-object v1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;->tvContent:Landroid/widget/TextView;

    new-instance v2, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter$1;-><init>(Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;Lcom/narvii/model/ChatMessage;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter$2;

    invoke-direct {v2, p0, p2}, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter$2;-><init>(Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;Lcom/narvii/model/ChatMessage;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object p2, p2, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 161
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 162
    iget-object p2, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;->tvContent:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v7, v7, v0, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;->tvContent:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto/16 :goto_5

    .line 165
    :cond_4
    iget-object p2, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;->tvContent:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 166
    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;->tvContent:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto/16 :goto_5

    .line 169
    :cond_5
    iget-object p2, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;->tvContent:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 170
    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;->tvContent:Landroid/widget/TextView;

    invoke-virtual {p1, v7, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 172
    :cond_6
    instance-of v1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;

    if-eqz v1, :cond_a

    .line 173
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->access$000()[I

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    iget-object v8, p2, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    invoke-virtual {v8}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->access$100(Lcom/narvii/chat/video/overlay/AvChatMessageListView;Ljava/lang/String;)I

    move-result v3

    aget v2, v2, v3

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 174
    check-cast p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;

    iget-object v2, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;->nickName:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    invoke-virtual {v3}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v2, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;->nickName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    invoke-virtual {p2}, Lcom/narvii/model/ChatMessage;->isStickerMessage()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 177
    iget-object v1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;->img:Lcom/narvii/widget/NVImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 178
    iget-object v1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;->img:Lcom/narvii/widget/NVImageView;

    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-virtual {v2, p2}, Lcom/narvii/monetization/sticker/StickerHelper;->getStickerMessageImageUrl(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_3

    .line 180
    :cond_7
    iget-object v1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;->img:Lcom/narvii/widget/NVImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 181
    iget-object v1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;->img:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 183
    :goto_3
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter$3;

    invoke-direct {v2, p0, p2}, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter$3;-><init>(Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;Lcom/narvii/model/ChatMessage;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object p2, p2, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 192
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 193
    iget-object p2, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;->nickName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v7, v7, v0, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 194
    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;->nickName:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto/16 :goto_5

    .line 196
    :cond_8
    iget-object p2, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;->nickName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 197
    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;->nickName:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto/16 :goto_5

    .line 200
    :cond_9
    iget-object p2, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;->nickName:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 201
    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;->nickName:Landroid/widget/TextView;

    invoke-virtual {p1, v7, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 203
    :cond_a
    instance-of v1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$WelcomeViewHolder;

    if-eqz v1, :cond_f

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 206
    new-instance v1, Landroid/text/style/ImageSpan;

    iget-object v8, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f080571

    const/4 v10, 0x1

    invoke-direct {v1, v8, v9, v10}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 207
    invoke-virtual {v3, v1, v6, v10, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 209
    iget-object v1, p2, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_b
    move-object v1, v7

    :goto_4
    if-eqz v1, :cond_c

    .line 211
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    .line 212
    iget-object v9, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {}, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->access$000()[I

    move-result-object v11

    iget-object v12, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    invoke-static {v12, v1}, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->access$100(Lcom/narvii/chat/video/overlay/AvChatMessageListView;Ljava/lang/String;)I

    move-result v1

    aget v1, v11, v1

    invoke-static {v9, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 213
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v9, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/2addr v8, v10

    invoke-virtual {v3, v9, v10, v8, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 215
    :cond_c
    check-cast p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$WelcomeViewHolder;

    iget-object v1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$WelcomeViewHolder;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object p2, p2, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 217
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 218
    iget-object p2, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$WelcomeViewHolder;->tvContent:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v7, v7, v0, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 219
    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$WelcomeViewHolder;->tvContent:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_5

    .line 221
    :cond_d
    iget-object p2, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$WelcomeViewHolder;->tvContent:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 222
    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$WelcomeViewHolder;->tvContent:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_5

    .line 225
    :cond_e
    iget-object p2, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$WelcomeViewHolder;->tvContent:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 226
    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$WelcomeViewHolder;->tvContent:Landroid/widget/TextView;

    invoke-virtual {p1, v7, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_f
    :goto_5
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 110
    iget-object p2, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    iget-object p2, p2, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b039f

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 111
    new-instance p2, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    invoke-direct {p2, v0, p1}, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;-><init>(Lcom/narvii/chat/video/overlay/AvChatMessageListView;Landroid/view/View;)V

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    .line 113
    iget-object p2, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    iget-object p2, p2, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b039e

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 114
    new-instance p2, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    invoke-direct {p2, v0, p1}, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;-><init>(Lcom/narvii/chat/video/overlay/AvChatMessageListView;Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    .line 116
    iget-object p2, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    iget-object p2, p2, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b03a1

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 117
    new-instance p2, Lcom/narvii/chat/video/overlay/AvChatMessageListView$WelcomeViewHolder;

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    invoke-direct {p2, v0, p1}, Lcom/narvii/chat/video/overlay/AvChatMessageListView$WelcomeViewHolder;-><init>(Lcom/narvii/chat/video/overlay/AvChatMessageListView;Landroid/view/View;)V

    return-object p2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

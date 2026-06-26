.class public Lcom/narvii/community/CommunityShareFragment;
.super Lcom/narvii/share/ShareDarkRoomFragment;
.source "CommunityShareFragment.java"


# static fields
.field public static KEY_SHARE_SUBJECT:Ljava/lang/String; = "shareSubject"

.field public static KEY_SHARE_TEXT:Ljava/lang/String; = "shareText"


# instance fields
.field community:Lcom/narvii/model/Community;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/narvii/share/ShareDarkRoomFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public configContentView(Landroid/view/View;)V
    .locals 8

    .line 72
    iget-object v0, p0, Lcom/narvii/community/CommunityShareFragment;->community:Lcom/narvii/model/Community;

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->community_share_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    .line 76
    iget-object v1, p0, Lcom/narvii/community/CommunityShareFragment;->community:Lcom/narvii/model/Community;

    iget-object v1, v1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 78
    sget v0, Lcom/narvii/lib/R$id;->community_share_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/PromotionalImageView;

    .line 80
    iget-object v1, p0, Lcom/narvii/community/CommunityShareFragment;->community:Lcom/narvii/model/Community;

    iget-object v2, v1, Lcom/narvii/model/Community;->promotionalMediaList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 81
    invoke-virtual {v0, v1}, Lcom/narvii/widget/PromotionalImageView;->setCommunity(Lcom/narvii/model/Community;)V

    goto :goto_0

    :cond_1
    const-string v1, "imageLoader"

    .line 83
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/image/NVImageLoader;

    .line 84
    iget-object v2, p0, Lcom/narvii/community/CommunityShareFragment;->community:Lcom/narvii/model/Community;

    iget-object v2, v2, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 85
    new-instance v3, Lcom/narvii/community/CommunityShareFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/narvii/community/CommunityShareFragment$1;-><init>(Lcom/narvii/community/CommunityShareFragment;Lcom/narvii/widget/PromotionalImageView;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 102
    :cond_2
    :goto_0
    sget v0, Lcom/narvii/lib/R$id;->community_share_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    sget v1, Lcom/narvii/lib/R$id;->community_share_tagline:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 104
    iget-object v2, p0, Lcom/narvii/community/CommunityShareFragment;->community:Lcom/narvii/model/Community;

    iget-object v2, v2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/narvii/community/CommunityShareFragment;->community:Lcom/narvii/model/Community;

    iget-object v0, v0, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/narvii/community/CommunityShareFragment;->community:Lcom/narvii/model/Community;

    iget-object v0, v0, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    .line 109
    sget v1, Lcom/narvii/lib/R$id;->community_id_info:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 110
    sget v2, Lcom/narvii/lib/R$string;->amino_id_with_name:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {p0, v2, v4}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 111
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 113
    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 114
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v4, v6, v0, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 115
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v6, 0x3f333333    # 0.7f

    invoke-direct {v2, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v4, v2, v5, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 116
    new-instance v2, Lcom/narvii/util/AlignSuperscriptSpan;

    const v7, 0x3eb33333    # 0.35f

    invoke-direct {v2, v7, v6}, Lcom/narvii/util/AlignSuperscriptSpan;-><init>(FF)V

    invoke-virtual {v4, v2, v5, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 118
    :cond_3
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    sget v0, Lcom/narvii/lib/R$id;->community_id_hint:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/narvii/lib/R$string;->community_id:I

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public contentLayoutId()I
    .locals 1

    .line 67
    sget v0, Lcom/narvii/lib/R$layout;->share_community_content_layout:I

    return v0
.end method

.method public getPreContentPayload(Landroid/view/View;)Lcom/narvii/share/SharePayload;
    .locals 7

    .line 128
    sget v0, Lcom/narvii/lib/R$id;->real_share_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/share/ShareDarkRoomFragment;->captureScreen(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "community"

    .line 129
    invoke-virtual {p0, v0, p1}, Lcom/narvii/share/ShareDarkRoomFragment;->storageBitmapScreen(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    .line 131
    new-instance v1, Lcom/narvii/share/SharePayload;

    invoke-direct {v1}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 132
    iget-object v2, p0, Lcom/narvii/community/CommunityShareFragment;->community:Lcom/narvii/model/Community;

    iput-object v2, v1, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    const-string v2, "shareText"

    .line 134
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/narvii/lib/R$string;->share_community_text_template_1:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/narvii/community/CommunityShareFragment;->community:Lcom/narvii/model/Community;

    if-nez v6, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    iget-object v6, v6, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    :goto_0
    aput-object v6, v5, v4

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    goto :goto_1

    .line 138
    :cond_1
    iput-object v2, v1, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 141
    :goto_1
    iput-boolean v4, v1, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 142
    iget-object v2, p0, Lcom/narvii/community/CommunityShareFragment;->community:Lcom/narvii/model/Community;

    iget-object v2, v2, Lcom/narvii/model/Community;->link:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/share/SharePayload;->url:Ljava/lang/String;

    .line 143
    iput-object v0, v1, Lcom/narvii/share/SharePayload;->uri:Landroid/net/Uri;

    .line 144
    iput-object p1, v1, Lcom/narvii/share/SharePayload;->bitmap:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/narvii/share/ShareDarkRoomFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 50
    sget-object v0, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_SHARE_OBJECT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Community;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    iput-object p1, p0, Lcom/narvii/community/CommunityShareFragment;->community:Lcom/narvii/model/Community;

    goto :goto_0

    .line 52
    :cond_0
    sget-object p1, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_SHARE_OBJECT:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Community;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    iput-object p1, p0, Lcom/narvii/community/CommunityShareFragment;->community:Lcom/narvii/model/Community;

    .line 54
    :goto_0
    iget-object p1, p0, Lcom/narvii/community/CommunityShareFragment;->community:Lcom/narvii/model/Community;

    if-nez p1, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 61
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 62
    sget-object v0, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_SHARE_OBJECT:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/community/CommunityShareFragment;->community:Lcom/narvii/model/Community;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

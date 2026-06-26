.class public abstract Lcom/narvii/poll/organizer/PollOptionActionListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "PollOptionActionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/PollOption;",
        "Lcom/narvii/poll/PollOptionListResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/PollOption;",
            ">;"
        }
    .end annotation

    .line 41
    const-class v0, Lcom/narvii/model/PollOption;

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 1

    .line 56
    check-cast p1, Lcom/narvii/model/PollOption;

    iget p1, p1, Lcom/narvii/model/PollOption;->type:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 61
    check-cast p1, Lcom/narvii/model/PollOption;

    .line 62
    iget v0, p1, Lcom/narvii/model/PollOption;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0b0579

    goto :goto_0

    :cond_0
    const v0, 0x7f0b057e

    :goto_0
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 67
    iget p3, p1, Lcom/narvii/model/PollOption;->type:I

    const v0, 0x7f090b9a

    const v2, 0x7f090571

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne p3, v1, :cond_3

    .line 68
    iget-object p1, p1, Lcom/narvii/model/PollOption;->refObject:Lcom/narvii/model/Feed;

    check-cast p1, Lcom/narvii/model/Item;

    const p3, 0x7f0900e4

    .line 69
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/ThumbImageView;

    iget-object v1, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const p3, 0x7f090764

    .line 70
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NicknameView;

    iget-object v1, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {p3, v1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 71
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p1}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 72
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p1, Lcom/narvii/model/Item;->label:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f090425

    .line 74
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 76
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->isFansOnly()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const p1, 0x7f090c12

    .line 79
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090cde

    .line 80
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 82
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/model/PollOption;->firstMedia()Lcom/narvii/model/Media;

    move-result-object p3

    .line 83
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v1, p3}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 84
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 85
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_5

    .line 86
    iget-object v1, p1, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090b08

    .line 88
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 89
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    iget-object p1, p1, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p3, :cond_6

    goto :goto_4

    :cond_6
    const/16 v3, 0x8

    .line 90
    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    const p1, 0x7f090cce

    .line 93
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090ccf

    .line 95
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 104
    instance-of v0, p3, Lcom/narvii/model/PollOption;

    if-eqz v0, :cond_2

    .line 105
    move-object v0, p3

    check-cast v0, Lcom/narvii/model/PollOption;

    const/4 v1, 0x1

    if-eqz p5, :cond_0

    .line 106
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090cde

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/narvii/model/PollOption;->refObject:Lcom/narvii/model/Feed;

    instance-of v3, v2, Lcom/narvii/model/Item;

    if-eqz v3, :cond_0

    .line 108
    check-cast v2, Lcom/narvii/model/Item;

    .line 109
    invoke-static {v2}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    move-result-object p1

    .line 110
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_0
    if-eqz p5, :cond_2

    .line 113
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090c12

    if-ne v2, v3, :cond_2

    iget-object v0, v0, Lcom/narvii/model/PollOption;->refObject:Lcom/narvii/model/Feed;

    instance-of v2, v0, Lcom/narvii/model/Item;

    if-eqz v2, :cond_2

    .line 115
    check-cast v0, Lcom/narvii/model/Item;

    .line 116
    iget-object p1, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 118
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 122
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/poll/PollOptionListResponse;",
            ">;"
        }
    .end annotation

    .line 46
    const-class v0, Lcom/narvii/poll/PollOptionListResponse;

    return-object v0
.end method

.method public withdraw(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/PollOption;Z)V
    .locals 2

    if-nez p4, :cond_0

    .line 128
    new-instance p4, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p4, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0393

    .line 129
    invoke-virtual {p4, v0}, Landroid/app/Dialog;->setTitle(I)V

    const v0, 0x7f0f037f

    const/4 v1, 0x1

    .line 130
    invoke-virtual {p4, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 131
    new-instance v0, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$1;-><init>(Lcom/narvii/poll/organizer/PollOptionActionListAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/PollOption;)V

    invoke-virtual {p4, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 139
    invoke-virtual {p4}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void

    .line 143
    :cond_0
    new-instance p4, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p4, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 144
    new-instance v0, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/narvii/poll/organizer/PollOptionActionListAdapter$2;-><init>(Lcom/narvii/poll/organizer/PollOptionActionListAdapter;Lcom/narvii/model/PollOption;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p4, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 159
    invoke-virtual {p4}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 161
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/blog/"

    .line 162
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/poll/option/"

    .line 164
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object p1, p3, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-string p2, "api"

    .line 167
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 168
    iget-object p3, p4, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p2, p1, p3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

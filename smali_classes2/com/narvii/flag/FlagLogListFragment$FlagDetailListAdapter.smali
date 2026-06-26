.class Lcom/narvii/flag/FlagLogListFragment$FlagDetailListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "FlagLogListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/flag/FlagLogListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FlagDetailListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/flag/model/FlagLog;",
        "Lcom/narvii/flag/model/FlagLogListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field datetime:Lcom/narvii/util/DateTimeFormatter;

.field final synthetic this$0:Lcom/narvii/flag/FlagLogListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/flag/FlagLogListFragment;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/narvii/flag/FlagLogListFragment$FlagDetailListAdapter;->this$0:Lcom/narvii/flag/FlagLogListFragment;

    .line 61
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 62
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/flag/FlagLogListFragment$FlagDetailListAdapter;->datetime:Lcom/narvii/util/DateTimeFormatter;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/flag/target-object/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/flag/FlagLogListFragment$FlagDetailListAdapter;->this$0:Lcom/narvii/flag/FlagLogListFragment;

    const-string v1, "flag_id"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/flag-logs"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 80
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/flag/model/FlagLog;",
            ">;"
        }
    .end annotation

    .line 68
    const-class v0, Lcom/narvii/flag/model/FlagLog;

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 96
    instance-of v0, p1, Lcom/narvii/flag/model/FlagLog;

    if-eqz v0, :cond_2

    const v0, 0x7f0b0259

    .line 97
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 99
    check-cast p1, Lcom/narvii/flag/model/FlagLog;

    iget-object p3, p1, Lcom/narvii/flag/model/FlagLog;->reporter:Lcom/narvii/model/User;

    if-eqz p3, :cond_0

    const p3, 0x7f0900e4

    .line 100
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/ThumbImageView;

    .line 101
    iget-object v0, p1, Lcom/narvii/flag/model/FlagLog;->reporter:Lcom/narvii/model/User;

    invoke-virtual {v0}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const v0, 0x7f090764

    .line 102
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NicknameView;

    .line 103
    iget-object v1, p1, Lcom/narvii/flag/model/FlagLog;->reporter:Lcom/narvii/model/User;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 104
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    :cond_0
    new-instance p3, Landroid/text/SpannableStringBuilder;

    new-instance v0, Lcom/narvii/flag/FlagTag;

    iget v1, p1, Lcom/narvii/flag/model/FlagLog;->flagType:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/narvii/flag/FlagTag;-><init>(ZI)V

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/flag/FlagTag;->getFlagTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v0, " "

    .line 110
    invoke-virtual {p3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 111
    new-instance v0, Lcom/narvii/util/text/TagSpan;

    const v1, -0xcfcfd0

    new-instance v3, Lcom/narvii/flag/FlagTag;

    iget v4, p1, Lcom/narvii/flag/model/FlagLog;->flagType:I

    invoke-direct {v3, v2, v4}, Lcom/narvii/flag/FlagTag;-><init>(ZI)V

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/narvii/flag/FlagTag;->getFlagTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/narvii/util/text/TagSpan;-><init>(ILjava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v3, 0x21

    .line 111
    invoke-virtual {p3, v0, v2, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const v0, 0x7f09048f

    .line 113
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f09048e

    .line 115
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/flag/FlagLogListFragment$FlagDetailListAdapter;->datetime:Lcom/narvii/util/DateTimeFormatter;

    iget-object v1, p1, Lcom/narvii/flag/model/FlagLog;->createdTime:Ljava/lang/String;

    .line 116
    invoke-static {v1}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object p3, p1, Lcom/narvii/flag/model/FlagLog;->message:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const v0, 0x7f090485

    if-eqz p3, :cond_1

    .line 119
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/narvii/flag/model/FlagLog;->message:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-object p2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    if-eqz p5, :cond_3

    .line 131
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0900e4

    if-eq v0, v1, :cond_0

    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090764

    if-ne v0, v1, :cond_3

    .line 132
    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/narvii/flag/model/FlagLog;

    iget-object v0, v0, Lcom/narvii/flag/model/FlagLog;->reporter:Lcom/narvii/model/User;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    .line 135
    :cond_1
    invoke-static {p0, v0}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 137
    :cond_2
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    .line 139
    :cond_3
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
            "+",
            "Lcom/narvii/flag/model/FlagLogListResponse;",
            ">;"
        }
    .end annotation

    .line 73
    const-class v0, Lcom/narvii/flag/model/FlagLogListResponse;

    return-object v0
.end method

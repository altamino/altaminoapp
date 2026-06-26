.class Lcom/narvii/catalog/review/CatalogSubmissionListFragment$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "CatalogSubmissionListFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/review/CatalogSubmissionListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/catalog/review/ItemSubmission;",
        "Lcom/narvii/catalog/review/ItemSubmissionResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# instance fields
.field final expands:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final fmt:Lcom/narvii/util/DateTimeFormatter;

.field final synthetic this$0:Lcom/narvii/catalog/review/CatalogSubmissionListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/catalog/review/CatalogSubmissionListFragment;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$Adapter;->this$0:Lcom/narvii/catalog/review/CatalogSubmissionListFragment;

    .line 87
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 84
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$Adapter;->expands:Ljava/util/HashSet;

    .line 88
    new-instance p1, Lcom/narvii/util/DateTimeFormatter;

    invoke-direct {p1}, Lcom/narvii/util/DateTimeFormatter;-><init>()V

    iput-object p1, p0, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$Adapter;->fmt:Lcom/narvii/util/DateTimeFormatter;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 93
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/knowledge-base-request"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 94
    iget-object v0, p0, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$Adapter;->this$0:Lcom/narvii/catalog/review/CatalogSubmissionListFragment;

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 95
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
            "Lcom/narvii/catalog/review/ItemSubmission;",
            ">;"
        }
    .end annotation

    .line 100
    const-class v0, Lcom/narvii/catalog/review/ItemSubmission;

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

    .line 130
    check-cast p1, Lcom/narvii/catalog/review/ItemSubmission;

    const v0, 0x7f0b0081

    .line 131
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f09094c

    .line 132
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p1, Lcom/narvii/catalog/review/ItemSubmission;->status:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0900be

    .line 134
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p1, Lcom/narvii/catalog/review/ItemSubmission;->status:I

    if-ne v1, v4, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f090b12

    .line 136
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p1, Lcom/narvii/catalog/review/ItemSubmission;->status:I

    if-eq v1, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x4

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 137
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 138
    iget v0, p1, Lcom/narvii/catalog/review/ItemSubmission;->status:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    if-eq v0, v3, :cond_3

    goto :goto_3

    :cond_3
    const v0, 0x7f0f0195

    .line 150
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0807ba

    .line 151
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const v0, -0x555556

    .line 152
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_4
    const v0, 0x7f0f0ead

    .line 145
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0807bc

    .line 146
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const v0, -0x1afff0

    .line 147
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_5
    const v0, 0x7f0f012b

    .line 140
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0807bb

    .line 141
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const v0, -0xcd56ee

    .line 142
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    const p3, 0x7f0905d7

    .line 155
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/CardView;

    iget-object v1, p1, Lcom/narvii/catalog/review/ItemSubmission;->item:Lcom/narvii/model/Item;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    .line 156
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f090b5b

    .line 157
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/narvii/catalog/review/ItemSubmission;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/ExpandTextView;

    iget-object v0, p0, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$Adapter;->expands:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/narvii/catalog/review/ItemSubmission;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p3, v0}, Lcom/narvii/widget/ExpandTextView;->setExpand(Z)V

    const p3, 0x7f090404

    .line 159
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object p3, p1, Lcom/narvii/catalog/review/ItemSubmission;->item:Lcom/narvii/model/Item;

    const/4 v0, 0x0

    if-eqz p3, :cond_6

    .line 162
    iget-object p3, p3, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    goto :goto_4

    :cond_6
    move-object p3, v0

    :goto_4
    const v1, 0x7f0900e4

    .line 164
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/NVImageView;

    if-nez p3, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p3}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v2, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const v0, 0x7f090764

    .line 165
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/NicknameView;

    invoke-virtual {v2, p3, v4}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;Z)V

    .line 166
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f09032e

    .line 168
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$Adapter;->fmt:Lcom/narvii/util/DateTimeFormatter;

    iget-object p1, p1, Lcom/narvii/catalog/review/ItemSubmission;->createdTime:Ljava/util/Date;

    invoke-virtual {v0, p1}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 174
    move-object v0, p3

    check-cast v0, Lcom/narvii/catalog/review/ItemSubmission;

    const/4 v1, 0x1

    if-eqz p5, :cond_0

    .line 175
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f09094c

    if-ne v2, v3, :cond_0

    .line 176
    iget-object p1, p0, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$Adapter;->this$0:Lcom/narvii/catalog/review/CatalogSubmissionListFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/catalog/review/CatalogSubmissionListFragment;->reject(Lcom/narvii/catalog/review/ItemSubmission;)V

    return v1

    :cond_0
    if-eqz p5, :cond_1

    .line 178
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0900be

    if-ne v2, v3, :cond_1

    .line 179
    iget-object p1, p0, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$Adapter;->this$0:Lcom/narvii/catalog/review/CatalogSubmissionListFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/catalog/review/CatalogSubmissionListFragment;->approve(Lcom/narvii/catalog/review/ItemSubmission;)V

    return v1

    :cond_1
    if-eqz p5, :cond_2

    .line 181
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0905d7

    if-ne v2, v3, :cond_2

    .line 182
    iget-object p1, v0, Lcom/narvii/catalog/review/ItemSubmission;->item:Lcom/narvii/model/Item;

    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_2
    if-eqz p5, :cond_3

    .line 184
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090404

    if-ne v2, v3, :cond_3

    .line 185
    iget-object p1, p0, Lcom/narvii/catalog/review/CatalogSubmissionListFragment$Adapter;->expands:Ljava/util/HashSet;

    iget-object p2, v0, Lcom/narvii/catalog/review/ItemSubmission;->requestId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return v1

    :cond_3
    if-eqz p5, :cond_6

    .line 188
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0900e4

    if-eq v2, v3, :cond_4

    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090764

    if-ne v2, v3, :cond_6

    .line 189
    :cond_4
    iget-object p1, v0, Lcom/narvii/catalog/review/ItemSubmission;->item:Lcom/narvii/model/Item;

    iget-object p1, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_5

    return v1

    .line 191
    :cond_5
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 194
    :cond_6
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 1

    .line 199
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/catalog/review/ItemSubmission;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 200
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    :cond_0
    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/catalog/review/ItemSubmissionResponse;",
            ">;"
        }
    .end annotation

    .line 105
    const-class v0, Lcom/narvii/catalog/review/ItemSubmissionResponse;

    return-object v0
.end method

.class Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "RecentVisitorListFragment.java"

# interfaces
.implements Lcom/narvii/user/list/UserListItemHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/visitor/RecentVisitorListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/visitor/RecentVisitor;",
        "Lcom/narvii/visitor/RecentVisitorListResponse;",
        ">;",
        "Lcom/narvii/user/list/UserListItemHost;"
    }
.end annotation


# instance fields
.field capacity:J

.field formatter:Lcom/narvii/util/DateTimeFormatter;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field lastCheckedTime:Ljava/util/Date;

.field lastVisitDate:Ljava/util/Date;

.field pendingOwnerCount:I

.field pendingVisitorCount:I

.field final synthetic this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

.field visitorsCount:J


# direct methods
.method public constructor <init>(Lcom/narvii/visitor/RecentVisitorListFragment;Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 290
    iput-object p1, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    .line 291
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-wide/16 v0, 0x0

    .line 279
    iput-wide v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->capacity:J

    .line 280
    iput-wide v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->visitorsCount:J

    const/4 p2, 0x0

    .line 282
    iput p2, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->pendingOwnerCount:I

    .line 283
    iput p2, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->pendingVisitorCount:I

    const/4 p2, 0x0

    .line 285
    iput-object p2, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->lastVisitDate:Ljava/util/Date;

    .line 292
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->formatter:Lcom/narvii/util/DateTimeFormatter;

    .line 293
    new-instance p2, Lcom/narvii/user/list/UserListHelper;

    invoke-direct {p2, p0, p0}, Lcom/narvii/user/list/UserListHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/user/list/UserListItemHost;)V

    iput-object p2, p1, Lcom/narvii/visitor/RecentVisitorListFragment;->userListHelper:Lcom/narvii/user/list/UserListHelper;

    return-void
.end method

.method private addObjectIntoList(Ljava/lang/Object;)V
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 473
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private aggregateOwner()V
    .locals 3

    .line 458
    iget v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->pendingOwnerCount:I

    if-eqz v0, :cond_0

    .line 459
    new-instance v1, Lcom/narvii/visitor/RecentVisitorListFragment$OwnerPrivacyMode;

    iget-object v2, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    invoke-direct {v1, v2, v0}, Lcom/narvii/visitor/RecentVisitorListFragment$OwnerPrivacyMode;-><init>(Lcom/narvii/visitor/RecentVisitorListFragment;I)V

    invoke-direct {p0, v1}, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->addObjectIntoList(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 460
    iput v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->pendingOwnerCount:I

    :cond_0
    return-void
.end method

.method private aggregateVisitor()V
    .locals 3

    .line 465
    iget v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->pendingVisitorCount:I

    if-eqz v0, :cond_0

    .line 466
    new-instance v1, Lcom/narvii/visitor/RecentVisitorListFragment$VisitorPrivacyMode;

    iget-object v2, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    invoke-direct {v1, v2, v0}, Lcom/narvii/visitor/RecentVisitorListFragment$VisitorPrivacyMode;-><init>(Lcom/narvii/visitor/RecentVisitorListFragment;I)V

    invoke-direct {p0, v1}, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->addObjectIntoList(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 467
    iput v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->pendingVisitorCount:I

    :cond_0
    return-void
.end method

.method private sendCheckedRequest()V
    .locals 4

    .line 362
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v1, "/user-profile/visitors/checked"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 363
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 364
    new-instance v2, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter$1;

    const-class v3, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter$1;-><init>(Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private setUpPrivacyCell(Landroid/view/View;IIII)V
    .locals 1

    const v0, 0x7f090571

    .line 559
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 560
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    const p3, 0x7f0902ec

    .line 561
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 562
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p4, p5}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object p2

    .line 563
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    iget-object p2, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    iget-boolean p2, p2, Lcom/narvii/visitor/RecentVisitorListFragment;->isGlobal:Z

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    const p2, -0xcfcfd0

    :goto_0
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f090677

    .line 565
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 567
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    iget-boolean p3, p3, Lcom/narvii/visitor/RecentVisitorListFragment;->isGlobal:Z

    if-eqz p3, :cond_1

    const p3, 0x7f06011d

    goto :goto_1

    :cond_1
    const p3, 0x7f06011c

    :goto_1
    invoke-static {p2, p3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public allowExtraInfoForItem(Lcom/narvii/model/User;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 3

    const p3, 0x7f0b04f4

    .line 380
    invoke-virtual {p0, p3, p1, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0906c9

    .line 381
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 382
    iget-object p3, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->capacity:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0f0b27

    invoke-virtual {p3, v1, v0}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object p3, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    iget-boolean p3, p3, Lcom/narvii/visitor/RecentVisitorListFragment;->isGlobal:Z

    const v0, -0x77000001

    const/high16 v1, 0x44000000    # 512.0f

    if-eqz p3, :cond_0

    const p3, -0x77000001

    goto :goto_0

    :cond_0
    const/high16 p3, 0x44000000    # 512.0f

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f0904c3

    .line 384
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/TintButton;

    .line 385
    iget-object p3, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    iget-boolean p3, p3, Lcom/narvii/visitor/RecentVisitorListFragment;->isGlobal:Z

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v0, 0x44000000    # 512.0f

    :goto_1
    invoke-virtual {p2, v0}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    return-object p1
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    iget v0, v0, Lcom/narvii/visitor/RecentVisitorListFragment;->ownerPrivacyMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 311
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/user-profile/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    iget-object v2, v2, Lcom/narvii/visitor/RecentVisitorListFragment;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/visitors"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string p1, "start0"

    .line 313
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 315
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/visitor/RecentVisitor;",
            ">;"
        }
    .end annotation

    .line 298
    const-class v0, Lcom/narvii/visitor/RecentVisitor;

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 1

    .line 479
    instance-of v0, p1, Lcom/narvii/visitor/RecentVisitorListFragment$SectionHeader;

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    return p1

    .line 482
    :cond_0
    instance-of v0, p1, Lcom/narvii/visitor/RecentVisitorListFragment$VisitorPrivacyMode;

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    return p1

    .line 485
    :cond_1
    instance-of p1, p1, Lcom/narvii/visitor/RecentVisitorListFragment$OwnerPrivacyMode;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 508
    instance-of v0, p1, Lcom/narvii/visitor/RecentVisitorListFragment$SectionHeader;

    if-eqz v0, :cond_1

    const v0, 0x7f0b05e2

    .line 509
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090b9a

    .line 510
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 511
    check-cast p1, Lcom/narvii/visitor/RecentVisitorListFragment$SectionHeader;

    iget-object p1, p1, Lcom/narvii/visitor/RecentVisitorListFragment$SectionHeader;->title:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object p1, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    iget-boolean p1, p1, Lcom/narvii/visitor/RecentVisitorListFragment;->isGlobal:Z

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const p1, -0xb5b5b6

    :goto_0
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 513
    :cond_1
    instance-of v0, p1, Lcom/narvii/visitor/RecentVisitorListFragment$VisitorPrivacyMode;

    const v1, 0x7f0b05e1

    if-eqz v0, :cond_2

    .line 514
    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 515
    check-cast p1, Lcom/narvii/visitor/RecentVisitorListFragment$VisitorPrivacyMode;

    iget v4, p1, Lcom/narvii/visitor/RecentVisitorListFragment$VisitorPrivacyMode;->count:I

    const v5, 0x7f08054f

    const v6, 0x7f0f116e

    const v7, 0x7f0f116d

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->setUpPrivacyCell(Landroid/view/View;IIII)V

    goto :goto_2

    .line 516
    :cond_2
    instance-of v0, p1, Lcom/narvii/visitor/RecentVisitorListFragment$OwnerPrivacyMode;

    if-eqz v0, :cond_3

    .line 517
    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 518
    check-cast p1, Lcom/narvii/visitor/RecentVisitorListFragment$OwnerPrivacyMode;

    iget v4, p1, Lcom/narvii/visitor/RecentVisitorListFragment$OwnerPrivacyMode;->count:I

    const v5, 0x7f080437

    const v6, 0x7f0f0d16

    const v7, 0x7f0f0d15

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->setUpPrivacyCell(Landroid/view/View;IIII)V

    goto :goto_2

    .line 519
    :cond_3
    instance-of v0, p1, Lcom/narvii/visitor/RecentVisitor;

    if-eqz v0, :cond_6

    .line 520
    check-cast p1, Lcom/narvii/visitor/RecentVisitor;

    .line 521
    iget-object v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    iget-boolean v0, v0, Lcom/narvii/visitor/RecentVisitorListFragment;->isGlobal:Z

    if-eqz v0, :cond_4

    const v0, 0x7f0b06b6

    goto :goto_1

    :cond_4
    const v0, 0x7f0b06b2

    :goto_1
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090b74

    .line 522
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz p3, :cond_5

    .line 524
    iget-object v1, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->formatter:Lcom/narvii/util/DateTimeFormatter;

    iget-object v2, p1, Lcom/narvii/visitor/RecentVisitor;->visitTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    :cond_5
    iget-object p3, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    iget-object p3, p3, Lcom/narvii/visitor/RecentVisitorListFragment;->userListHelper:Lcom/narvii/user/list/UserListHelper;

    iget-object p1, p1, Lcom/narvii/visitor/RecentVisitor;->profile:Lcom/narvii/model/User;

    invoke-virtual {p3, p1, p2}, Lcom/narvii/user/list/UserListHelper;->updateCell(Lcom/narvii/model/User;Landroid/view/View;)V

    const p1, 0x7f090677

    .line 528
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 530
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_6
    const/4 p2, 0x0

    :cond_7
    :goto_2
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 493
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 494
    instance-of v1, v0, Lcom/narvii/visitor/RecentVisitorListFragment$SectionHeader;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/narvii/visitor/RecentVisitorListFragment$VisitorPrivacyMode;

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/narvii/visitor/RecentVisitorListFragment$OwnerPrivacyMode;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 497
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->isEnabled(I)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->l:Ljava/util/List;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 11

    const/4 v0, 0x0

    .line 401
    iput v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->pendingOwnerCount:I

    .line 402
    iput v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->pendingVisitorCount:I

    const/4 v1, 0x0

    .line 403
    iput-object v1, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->lastVisitDate:Ljava/util/Date;

    .line 405
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    .line 407
    iput-object v1, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->l:Ljava/util/List;

    goto/16 :goto_5

    .line 408
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->l:Ljava/util/List;

    goto/16 :goto_5

    .line 411
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->l:Ljava/util/List;

    .line 413
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/visitor/RecentVisitor;

    .line 414
    iget v5, v4, Lcom/narvii/visitor/RecentVisitor;->ownerPrivacyMode:I

    if-ne v5, v2, :cond_2

    iget v5, v4, Lcom/narvii/visitor/RecentVisitor;->visitorPrivacyMode:I

    if-ne v5, v2, :cond_2

    iget-object v5, v4, Lcom/narvii/visitor/RecentVisitor;->profile:Lcom/narvii/model/User;

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 415
    :goto_1
    iget v6, v4, Lcom/narvii/visitor/RecentVisitor;->ownerPrivacyMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    .line 416
    :goto_2
    iget v8, v4, Lcom/narvii/visitor/RecentVisitor;->visitorPrivacyMode:I

    if-ne v8, v7, :cond_4

    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    if-nez v5, :cond_5

    if-nez v6, :cond_5

    if-nez v7, :cond_5

    goto :goto_0

    :cond_5
    if-eqz v6, :cond_6

    .line 420
    iget-object v8, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    iget-boolean v8, v8, Lcom/narvii/visitor/RecentVisitorListFragment;->isMe:Z

    if-nez v8, :cond_6

    goto :goto_0

    .line 423
    :cond_6
    iget-object v8, v4, Lcom/narvii/visitor/RecentVisitor;->visitTime:Ljava/util/Date;

    if-nez v8, :cond_7

    goto :goto_0

    .line 427
    :cond_7
    iget-object v8, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    iget-boolean v8, v8, Lcom/narvii/visitor/RecentVisitorListFragment;->isMe:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->lastVisitDate:Ljava/util/Date;

    if-eqz v8, :cond_8

    iget-object v9, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->lastCheckedTime:Ljava/util/Date;

    if-eqz v9, :cond_8

    invoke-virtual {v8, v9}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v4, Lcom/narvii/visitor/RecentVisitor;->visitTime:Ljava/util/Date;

    iget-object v9, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->lastCheckedTime:Ljava/util/Date;

    invoke-virtual {v8, v9}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 428
    invoke-direct {p0}, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->aggregateOwner()V

    .line 429
    invoke-direct {p0}, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->aggregateVisitor()V

    .line 430
    new-instance v8, Lcom/narvii/visitor/RecentVisitorListFragment$SectionHeader;

    iget-object v9, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    const v10, 0x7f0f03c0

    invoke-virtual {v9, v10}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/narvii/visitor/RecentVisitorListFragment$SectionHeader;-><init>(Lcom/narvii/visitor/RecentVisitorListFragment;Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->addObjectIntoList(Ljava/lang/Object;)V

    .line 433
    :cond_8
    iget-object v8, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    iget-boolean v8, v8, Lcom/narvii/visitor/RecentVisitorListFragment;->isMe:Z

    if-eqz v8, :cond_9

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->lastCheckedTime:Ljava/util/Date;

    if-eqz v3, :cond_9

    iget-object v8, v4, Lcom/narvii/visitor/RecentVisitor;->visitTime:Ljava/util/Date;

    invoke-virtual {v8, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 434
    new-instance v3, Lcom/narvii/visitor/RecentVisitorListFragment$SectionHeader;

    iget-object v8, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    const v9, 0x7f0f0c12

    invoke-virtual {v8, v9}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Lcom/narvii/visitor/RecentVisitorListFragment$SectionHeader;-><init>(Lcom/narvii/visitor/RecentVisitorListFragment;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->addObjectIntoList(Ljava/lang/Object;)V

    :cond_9
    if-eqz v5, :cond_a

    .line 438
    invoke-direct {p0}, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->aggregateVisitor()V

    .line 439
    invoke-direct {p0}, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->aggregateOwner()V

    .line 440
    invoke-direct {p0, v4}, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->addObjectIntoList(Ljava/lang/Object;)V

    goto :goto_4

    :cond_a
    if-eqz v6, :cond_b

    .line 442
    invoke-direct {p0}, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->aggregateVisitor()V

    .line 443
    iget v3, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->pendingOwnerCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->pendingOwnerCount:I

    goto :goto_4

    :cond_b
    if-eqz v7, :cond_c

    .line 445
    invoke-direct {p0}, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->aggregateOwner()V

    .line 446
    iget v3, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->pendingVisitorCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->pendingVisitorCount:I

    .line 448
    :cond_c
    :goto_4
    iget-object v3, v4, Lcom/narvii/visitor/RecentVisitor;->visitTime:Ljava/util/Date;

    iput-object v3, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->lastVisitDate:Ljava/util/Date;

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 451
    :cond_d
    invoke-direct {p0}, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->aggregateVisitor()V

    .line 452
    invoke-direct {p0}, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->aggregateOwner()V

    .line 454
    :goto_5
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 2

    .line 354
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "start0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    iget v0, p3, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    const/16 v1, 0x12b

    if-ne v0, v1, :cond_0

    .line 355
    iget-object v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    const/4 v1, 0x2

    iput v1, v0, Lcom/narvii/visitor/RecentVisitorListFragment;->ownerPrivacyMode:I

    .line 356
    invoke-static {v0}, Lcom/narvii/visitor/RecentVisitorListFragment;->access$400(Lcom/narvii/visitor/RecentVisitorListFragment;)V

    .line 358
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/list/NVPagedAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 538
    instance-of v0, p3, Lcom/narvii/visitor/RecentVisitor;

    if-eqz v0, :cond_3

    .line 539
    check-cast p3, Lcom/narvii/visitor/RecentVisitor;

    .line 540
    iget-object p1, p3, Lcom/narvii/visitor/RecentVisitor;->profile:Lcom/narvii/model/User;

    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 542
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    .line 545
    :cond_0
    iget-object p1, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    iget-boolean p1, p1, Lcom/narvii/visitor/RecentVisitorListFragment;->isMe:Z

    if-eqz p1, :cond_2

    .line 546
    iget-object p1, p3, Lcom/narvii/visitor/RecentVisitor;->visitTime:Ljava/util/Date;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->lastCheckedTime:Ljava/util/Date;

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "EarlierUserList"

    goto :goto_0

    :cond_1
    const-string p1, "NewUserList"

    goto :goto_0

    :cond_2
    const-string p1, "UserList"

    .line 552
    :goto_0
    sget-object p2, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object p2, p3, Lcom/narvii/visitor/RecentVisitor;->profile:Lcom/narvii/model/User;

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    const/4 p1, 0x1

    return p1

    .line 555
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 274
    check-cast p2, Lcom/narvii/visitor/RecentVisitorListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/visitor/RecentVisitorListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/visitor/RecentVisitorListResponse;I)V
    .locals 3

    .line 335
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "start0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p2, Lcom/narvii/visitor/RecentVisitorListResponse;->lastCheckTime:Ljava/util/Date;

    iput-object v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->lastCheckedTime:Ljava/util/Date;

    .line 337
    iget-object v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->lastCheckedTime:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->lastCheckedTime:Ljava/util/Date;

    .line 340
    :cond_0
    iget-wide v0, p2, Lcom/narvii/visitor/RecentVisitorListResponse;->capacity:J

    iput-wide v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->capacity:J

    .line 341
    iget-wide v0, p2, Lcom/narvii/visitor/RecentVisitorListResponse;->visitorsCount:J

    iput-wide v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->visitorsCount:J

    .line 344
    iget-object v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    invoke-static {v0}, Lcom/narvii/visitor/RecentVisitorListFragment;->access$200(Lcom/narvii/visitor/RecentVisitorListFragment;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/narvii/visitor/RecentVisitorListFragment;->access$300(Lcom/narvii/visitor/RecentVisitorListFragment;J)V

    .line 345
    iget-object v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    iget-boolean v0, v0, Lcom/narvii/visitor/RecentVisitorListFragment;->isMe:Z

    if-eqz v0, :cond_1

    .line 346
    invoke-direct {p0}, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->sendCheckedRequest()V

    .line 349
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/visitor/RecentVisitorListResponse;",
            ">;"
        }
    .end annotation

    .line 303
    const-class v0, Lcom/narvii/visitor/RecentVisitorListResponse;

    return-object v0
.end method

.method public showAminoId()Z
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->this$0:Lcom/narvii/visitor/RecentVisitorListFragment;

    iget-boolean v0, v0, Lcom/narvii/visitor/RecentVisitorListFragment;->isGlobal:Z

    return v0
.end method

.method public showDisableView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showListEnd(I)Z
    .locals 4

    if-lez p1, :cond_0

    .line 391
    iget-wide v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->capacity:J

    const-wide/16 v2, 0x1

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    iget-wide v2, p0, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;->visitorsCount:J

    cmp-long p1, v2, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

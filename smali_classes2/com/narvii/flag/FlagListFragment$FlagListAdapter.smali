.class Lcom/narvii/flag/FlagListFragment$FlagListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "FlagListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/flag/FlagListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FlagListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/flag/model/Flag;",
        "Lcom/narvii/flag/model/FlagListResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final TYPE_EXTERNAL_POST:I = 0x1

.field private static final TYPE_NORMAL:I


# instance fields
.field datetime:Lcom/narvii/util/DateTimeFormatter;

.field final synthetic this$0:Lcom/narvii/flag/FlagListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/flag/FlagListFragment;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 278
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 279
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->datetime:Lcom/narvii/util/DateTimeFormatter;

    return-void
.end method

.method private isImodDisable(Lcom/narvii/flag/model/Flag;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 430
    :cond_0
    iget-object p1, p1, Lcom/narvii/flag/model/Flag;->operator:Lcom/narvii/model/User;

    if-eqz p1, :cond_1

    iget p1, p1, Lcom/narvii/model/User;->role:I

    const/16 v1, 0xfe

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    invoke-static {p1}, Lcom/narvii/flag/FlagListFragment;->access$000(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "resolved"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private showImodeOperationDialog()V
    .locals 4

    .line 437
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 438
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b021c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09002c

    .line 439
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 440
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/narvii/flag/FlagListFragment$FlagListAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/narvii/flag/FlagListFragment$FlagListAdapter$1;-><init>(Lcom/narvii/flag/FlagListFragment$FlagListAdapter;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    :cond_0
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(Landroid/view/View;)V

    .line 448
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 308
    new-instance p1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {p1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v0, "/flag"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 309
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    invoke-static {v0}, Lcom/narvii/flag/FlagListFragment;->access$000(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 310
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    invoke-static {v0}, Lcom/narvii/flag/FlagListFragment;->access$100(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 311
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
            "Lcom/narvii/flag/model/Flag;",
            ">;"
        }
    .end annotation

    .line 284
    const-class v0, Lcom/narvii/flag/model/Flag;

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 2

    .line 321
    instance-of v0, p1, Lcom/narvii/flag/model/Flag;

    if-eqz v0, :cond_1

    .line 322
    check-cast p1, Lcom/narvii/flag/model/Flag;

    iget v0, p1, Lcom/narvii/flag/model/Flag;->objectType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/flag/model/Flag;->getBlogType()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 333
    instance-of v0, p1, Lcom/narvii/flag/model/Flag;

    if-eqz v0, :cond_c

    .line 334
    move-object v0, p1

    check-cast v0, Lcom/narvii/flag/model/Flag;

    iget-object v1, v0, Lcom/narvii/flag/model/Flag;->objectUser:Lcom/narvii/model/User;

    .line 335
    invoke-virtual {p0, p1}, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->getItemType(Ljava/lang/Object;)I

    move-result p1

    const v2, 0x7f0b025a

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x7f0b025b

    .line 348
    :cond_1
    :goto_0
    iget p1, v0, Lcom/narvii/flag/model/Flag;->objectType:I

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne p1, v3, :cond_2

    invoke-virtual {v0}, Lcom/narvii/flag/model/Flag;->getBlogType()I

    move-result p1

    if-ne p1, v4, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 350
    :goto_1
    invoke-virtual {p0, v2, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0900e4

    .line 351
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    const v2, 0x7f090764

    .line 352
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v6, 0x7f090af8

    .line 353
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f090490

    .line 354
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 357
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/flag/model/Flag;->getExternalOriginDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 358
    instance-of p1, v2, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 359
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/flag/model/Flag;->getExternalOriginName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    :cond_3
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_6

    .line 363
    invoke-virtual {v1}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 364
    instance-of p1, v2, Lcom/narvii/widget/NicknameView;

    if-eqz p1, :cond_5

    .line 365
    check-cast v2, Lcom/narvii/widget/NicknameView;

    invoke-virtual {v2, v1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 367
    :cond_5
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 368
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/flag/model/Flag;->getStrikeSpanStr(Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    :cond_6
    :goto_2
    iget p1, v0, Lcom/narvii/flag/model/Flag;->flaggedCount:I

    const/16 p3, 0x63

    if-le p1, p3, :cond_7

    const-string v1, "99+"

    goto :goto_3

    .line 372
    :cond_7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-le p1, p3, :cond_8

    const/high16 p1, 0x41800000    # 16.0f

    goto :goto_4

    :cond_8
    const/high16 p1, 0x41a00000    # 20.0f

    .line 373
    :goto_4
    invoke-virtual {v7, v3, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 376
    iget p1, v0, Lcom/narvii/flag/model/Flag;->objectType:I

    if-ne p1, v3, :cond_9

    .line 377
    invoke-virtual {v0}, Lcom/narvii/flag/model/Flag;->getBlogType()I

    move-result p3

    if-eqz p3, :cond_9

    .line 378
    iget-object p3, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    invoke-static {p3}, Lcom/narvii/flag/FlagListFragment;->access$500(Lcom/narvii/flag/FlagListFragment;)Landroid/util/SparseArray;

    move-result-object p3

    invoke-virtual {v0}, Lcom/narvii/flag/model/Flag;->getBlogType()I

    move-result v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, v1, p1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 380
    :cond_9
    iget-object p3, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    invoke-static {p3, p1}, Lcom/narvii/flag/FlagListFragment;->access$600(Lcom/narvii/flag/FlagListFragment;I)Ljava/lang/String;

    move-result-object p1

    const p3, 0x7f09048f

    .line 383
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 384
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x8

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090b45

    .line 388
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/flag/FlagTagLayout;

    .line 389
    iget-object p3, v0, Lcom/narvii/flag/model/Flag;->flaggedTypes:Ljava/util/List;

    invoke-static {p3}, Lcom/narvii/flag/FlagTag;->getFlagTagList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    .line 390
    invoke-virtual {p1, p3}, Lcom/narvii/flag/FlagTagLayout;->addTag(Ljava/util/List;)V

    .line 391
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    const p1, 0x7f09048e

    .line 393
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->datetime:Lcom/narvii/util/DateTimeFormatter;

    iget-object v1, v0, Lcom/narvii/flag/model/Flag;->modifiedTime:Ljava/util/Date;

    invoke-virtual {p3, v1}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090971

    .line 396
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p3, 0x7f090970

    .line 397
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 399
    iget v1, v0, Lcom/narvii/flag/model/Flag;->status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    const v3, 0x7f0f06f0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->datetime:Lcom/narvii/util/DateTimeFormatter;

    iget-object v0, v0, Lcom/narvii/flag/model/Flag;->lastResolvedTime:Ljava/util/Date;

    .line 401
    invoke-virtual {v2, v0}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    invoke-virtual {p3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 405
    :cond_b
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    return-object p2

    :cond_c
    const/4 p1, 0x0

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 415
    instance-of p1, p3, Lcom/narvii/flag/model/Flag;

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 416
    move-object v1, p3

    check-cast v1, Lcom/narvii/flag/model/Flag;

    invoke-direct {p0, v1}, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->isImodDisable(Lcom/narvii/flag/model/Flag;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 417
    invoke-direct {p0}, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->showImodeOperationDialog()V

    return p2

    .line 420
    :cond_0
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v2

    .line 421
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    invoke-static {p1}, Lcom/narvii/flag/FlagListFragment;->access$000(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "resolved"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    invoke-static {p1}, Lcom/narvii/flag/FlagListFragment;->access$000(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    invoke-static {p1}, Lcom/narvii/flag/FlagListFragment;->access$100(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v4, p1

    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    invoke-static {p1}, Lcom/narvii/flag/FlagListFragment;->access$200(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/narvii/flag/resolve/FlagModeHelper;->launchFlagMode(Lcom/narvii/app/NVContext;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return p2
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/flag/model/FlagListResponse;I)V
    .locals 0

    .line 294
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 295
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/narvii/flag/FlagListFragment;->access$202(Lcom/narvii/flag/FlagListFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 297
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 298
    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    .line 299
    invoke-static {p1}, Lcom/narvii/flag/FlagListFragment;->access$000(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "resolved"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 300
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    invoke-static {p1}, Lcom/narvii/flag/FlagListFragment;->access$400(Lcom/narvii/flag/FlagListFragment;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 302
    :cond_0
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->this$0:Lcom/narvii/flag/FlagListFragment;

    invoke-static {p1}, Lcom/narvii/flag/FlagListFragment;->access$400(Lcom/narvii/flag/FlagListFragment;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 271
    check-cast p2, Lcom/narvii/flag/model/FlagListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/flag/model/FlagListResponse;I)V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/flag/model/FlagListResponse;",
            ">;"
        }
    .end annotation

    .line 289
    const-class v0, Lcom/narvii/flag/model/FlagListResponse;

    return-object v0
.end method

.class public Lcom/narvii/wallet/PaidOutDetailFragment;
.super Lcom/narvii/list/NVListFragment;
.source "PaidOutDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;
    }
.end annotation


# instance fields
.field dateFormat:Ljava/text/DateFormat;

.field dfmt:Ljava/text/DecimalFormat;

.field paidOutId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 37
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 39
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/wallet/PaidOutDetailFragment;->dfmt:Ljava/text/DecimalFormat;

    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "MM/dd/yyyy HH:mm a"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/narvii/wallet/PaidOutDetailFragment;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 73
    new-instance p1, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;-><init>(Lcom/narvii/wallet/PaidOutDetailFragment;Lcom/narvii/app/NVContext;)V

    return-object p1
.end method

.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 56
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800b3

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f0395

    .line 46
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string p1, "paidOutId"

    .line 47
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/wallet/PaidOutDetailFragment;->paidOutId:Ljava/lang/String;

    .line 48
    iget-object p1, p0, Lcom/narvii/wallet/PaidOutDetailFragment;->paidOutId:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_0
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 61
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06016f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/narvii/util/ViewUtils;->setTopBottomOverscrollStretchColor(Landroid/widget/ListView;I)V

    return-void
.end method

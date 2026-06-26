.class Lcom/narvii/account/PushSettingListFragment$SectionAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "PushSettingListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/PushSettingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SectionAdapter"
.end annotation


# instance fields
.field private colorPrimary:I

.field resId:I

.field final synthetic this$0:Lcom/narvii/account/PushSettingListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/account/PushSettingListFragment;I)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/narvii/account/PushSettingListFragment$SectionAdapter;->this$0:Lcom/narvii/account/PushSettingListFragment;

    .line 359
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "config"

    .line 360
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 361
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result p1

    iput p1, p0, Lcom/narvii/account/PushSettingListFragment$SectionAdapter;->colorPrimary:I

    .line 362
    iput p2, p0, Lcom/narvii/account/PushSettingListFragment$SectionAdapter;->resId:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const p1, 0x7f0b05b1

    .line 367
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090b5b

    .line 368
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 369
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f060183

    invoke-static {p3, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/narvii/account/PushSettingListFragment$SectionAdapter;->colorPrimary:I

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 370
    iget p3, p0, Lcom/narvii/account/PushSettingListFragment$SectionAdapter;->resId:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    return-object p1
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

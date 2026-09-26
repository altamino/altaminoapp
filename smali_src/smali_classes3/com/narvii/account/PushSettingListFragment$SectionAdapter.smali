.class Lcom/narvii/account/PushSettingListFragment$SectionAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/PushSettingListFragment$SectionAdapter;->this$0:Lcom/narvii/account/PushSettingListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string p1, "config"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 21
    move-result p1

    .line 22
    .line 23
    iput p1, p0, Lcom/narvii/account/PushSettingListFragment$SectionAdapter;->colorPrimary:I

    .line 24
    .line 25
    iput p2, p0, Lcom/narvii/account/PushSettingListFragment$SectionAdapter;->resId:I

    .line 26
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d0668

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a0e51

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, Landroid/widget/TextView;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    .line 20
    move-result p3

    .line 21
    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p3

    .line 27
    .line 28
    .line 29
    const v0, 0x7f0603ed

    .line 30
    .line 31
    .line 32
    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 33
    move-result p3

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    iget p3, p0, Lcom/narvii/account/PushSettingListFragment$SectionAdapter;->colorPrimary:I

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    .line 41
    iget p3, p0, Lcom/narvii/account/PushSettingListFragment$SectionAdapter;->resId:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 45
    return-object p1
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

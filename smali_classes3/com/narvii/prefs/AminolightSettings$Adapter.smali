.class Lcom/narvii/prefs/AminolightSettings$Adapter;
.super Lcom/narvii/list/prefs/PrefsAdapter;
.source "AminolightSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/prefs/AminolightSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prefs/AminolightSettings;


# direct methods
.method public constructor <init>(Lcom/narvii/prefs/AminolightSettings;)V
    .locals 1

    .line 361
    iput-object p1, p0, Lcom/narvii/prefs/AminolightSettings$Adapter;->this$0:Lcom/narvii/prefs/AminolightSettings;

    .line 362
    invoke-direct {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 4

    .line 14881
    sget-object v0, Lcom/narvii/list/prefs/PrefsAdapter;->DIVIDER:Lcom/narvii/util/Tag;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14882
    new-instance v0, Lcom/narvii/list/prefs/PrefsToggle;

    const v1, 0x7f0f11ae

    iget-object v3, p0, Lcom/narvii/prefs/AminolightSettings$Adapter;->this$0:Lcom/narvii/prefs/AminolightSettings;

    invoke-virtual {v3, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/narvii/list/prefs/PrefsToggle;-><init>(ILjava/lang/String;)V

    sget-boolean v2, Lcom/narvii/app/NVApplication;->DEBUG:Z

    iput-boolean v2, v0, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 14884
    iget-object v2, v3, Lcom/narvii/prefs/AminolightSettings;->switchCallback:Lcom/narvii/util/Callback;

    iput-object v2, v0, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    .line 14885
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14882
    new-instance v0, Lcom/narvii/list/prefs/PrefsToggle;

    const v1, 0x7f0f11af

    iget-object v3, p0, Lcom/narvii/prefs/AminolightSettings$Adapter;->this$0:Lcom/narvii/prefs/AminolightSettings;

    invoke-virtual {v3, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/narvii/list/prefs/PrefsToggle;-><init>(ILjava/lang/String;)V

    .line 14883
    const/4 v1, 0x0

    const-string v2, "show_fake_checkin"

    invoke-static {v2, v1}, Lcom/narvii/util/DBAminoLightHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 14884
    iget-object v2, v3, Lcom/narvii/prefs/AminolightSettings;->switchCallback:Lcom/narvii/util/Callback;

    iput-object v2, v0, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    .line 14885
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14882
    new-instance v0, Lcom/narvii/list/prefs/PrefsToggle;

    const v1, 0x7f0f11b0

    iget-object v3, p0, Lcom/narvii/prefs/AminolightSettings$Adapter;->this$0:Lcom/narvii/prefs/AminolightSettings;

    invoke-virtual {v3, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/narvii/list/prefs/PrefsToggle;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "stop_send_active"

    invoke-static {v2, v1}, Lcom/narvii/util/DBAminoLightHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 14884
    iget-object v2, v3, Lcom/narvii/prefs/AminolightSettings;->switchCallback:Lcom/narvii/util/Callback;

    iput-object v2, v0, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    .line 14885
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14882
    new-instance v0, Lcom/narvii/list/prefs/PrefsToggle;

    const v1, 0x7f0f11b1

    iget-object v3, p0, Lcom/narvii/prefs/AminolightSettings$Adapter;->this$0:Lcom/narvii/prefs/AminolightSettings;

    invoke-virtual {v3, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/narvii/list/prefs/PrefsToggle;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "show_visitor_count"

    invoke-static {v2, v1}, Lcom/narvii/util/DBAminoLightHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 14884
    iget-object v2, v3, Lcom/narvii/prefs/AminolightSettings;->switchCallback:Lcom/narvii/util/Callback;

    iput-object v2, v0, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    .line 14885
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/prefs/PrefsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onAttach()V
    .locals 0

    .line 352
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    return-void
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 369
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 370
    invoke-virtual {p0}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 371
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    return-void
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

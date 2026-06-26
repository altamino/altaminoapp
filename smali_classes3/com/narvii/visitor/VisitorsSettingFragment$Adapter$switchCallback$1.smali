.class final Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$switchCallback$1;
.super Ljava/lang/Object;
.source "VisitorsSettingFragment.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;-><init>(Lcom/narvii/visitor/VisitorsSettingFragment;Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/list/prefs/PrefsToggle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$switchCallback$1;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/list/prefs/PrefsToggle;)V
    .locals 2

    .line 109
    iget-boolean p1, p1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$switchCallback$1;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->access$sendPrivacyRequest(Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 86
    check-cast p1, Lcom/narvii/list/prefs/PrefsToggle;

    invoke-virtual {p0, p1}, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$switchCallback$1;->call(Lcom/narvii/list/prefs/PrefsToggle;)V

    return-void
.end method

.class final Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$getView$1;
.super Ljava/lang/Object;
.source "VisitorsSettingFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $item:Ljava/lang/Object;

.field final synthetic this$0:Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$getView$1;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$getView$1;->$item:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 137
    iget-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$getView$1;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {p1}, Lcom/narvii/visitor/VisitorsSettingFragment;->access$getPrivacyMode$p(Lcom/narvii/visitor/VisitorsSettingFragment;)I

    move-result p1

    iget-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$getView$1;->$item:Ljava/lang/Object;

    check-cast v0, Lcom/narvii/visitor/VisitorsSettingFragment$PrefsSelect;

    invoke-virtual {v0}, Lcom/narvii/visitor/VisitorsSettingFragment$PrefsSelect;->getItemId()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$getView$1;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    iget-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$getView$1;->$item:Ljava/lang/Object;

    check-cast v0, Lcom/narvii/visitor/VisitorsSettingFragment$PrefsSelect;

    invoke-virtual {v0}, Lcom/narvii/visitor/VisitorsSettingFragment$PrefsSelect;->getItemId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->access$sendPrivacyRequest(Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

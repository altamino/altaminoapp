.class final Lcom/narvii/prefs/DevSelectionFragment$onActivityCreated$1;
.super Ljava/lang/Object;
.source "DevSelectionFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/DevSelectionFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prefs/DevSelectionFragment;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/DevSelectionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment$onActivityCreated$1;->this$0:Lcom/narvii/prefs/DevSelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment$onActivityCreated$1;->this$0:Lcom/narvii/prefs/DevSelectionFragment;

    invoke-static {p1}, Lcom/narvii/prefs/DevSelectionFragment;->access$requestDevOptionUpdate(Lcom/narvii/prefs/DevSelectionFragment;)V

    return-void
.end method

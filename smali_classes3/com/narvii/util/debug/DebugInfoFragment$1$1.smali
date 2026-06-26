.class Lcom/narvii/util/debug/DebugInfoFragment$1$1;
.super Ljava/lang/Object;
.source "DebugInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/debug/DebugInfoFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/util/debug/DebugInfoFragment$1;


# direct methods
.method constructor <init>(Lcom/narvii/util/debug/DebugInfoFragment$1;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/narvii/util/debug/DebugInfoFragment$1$1;->this$1:Lcom/narvii/util/debug/DebugInfoFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/narvii/util/debug/DebugInfoFragment$1$1;->this$1:Lcom/narvii/util/debug/DebugInfoFragment$1;

    iget-object v0, v0, Lcom/narvii/util/debug/DebugInfoFragment$1;->this$0:Lcom/narvii/util/debug/DebugInfoFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090b5b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/util/debug/DebugInfoFragment$1$1;->this$1:Lcom/narvii/util/debug/DebugInfoFragment$1;

    iget-object v1, v1, Lcom/narvii/util/debug/DebugInfoFragment$1;->this$0:Lcom/narvii/util/debug/DebugInfoFragment;

    iget-object v1, v1, Lcom/narvii/util/debug/DebugInfoFragment;->info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

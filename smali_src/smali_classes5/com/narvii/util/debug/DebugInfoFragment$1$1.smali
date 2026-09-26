.class Lcom/narvii/util/debug/DebugInfoFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/debug/DebugInfoFragment$1$1;->this$1:Lcom/narvii/util/debug/DebugInfoFragment$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/debug/DebugInfoFragment$1$1;->this$1:Lcom/narvii/util/debug/DebugInfoFragment$1;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/util/debug/DebugInfoFragment$1;->this$0:Lcom/narvii/util/debug/DebugInfoFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    const v1, 0x7f0a0e51

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Landroid/widget/TextView;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/util/debug/DebugInfoFragment$1$1;->this$1:Lcom/narvii/util/debug/DebugInfoFragment$1;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/narvii/util/debug/DebugInfoFragment$1;->this$0:Lcom/narvii/util/debug/DebugInfoFragment;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/narvii/util/debug/DebugInfoFragment;->info:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    return-void
.end method

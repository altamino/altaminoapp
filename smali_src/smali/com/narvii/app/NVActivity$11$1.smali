.class Lcom/narvii/app/NVActivity$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/NVActivity$11;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/app/NVActivity$11;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVActivity$11;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/NVActivity$11$1;->this$1:Lcom/narvii/app/NVActivity$11;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVActivity$11$1;->this$1:Lcom/narvii/app/NVActivity$11;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/app/NVActivity$11;->this$0:Lcom/narvii/app/NVActivity;

    .line 5
    .line 6
    iget-object v2, v0, Lcom/narvii/app/NVActivity$11;->val$parent:Landroid/view/ViewGroup;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/app/NVActivity$11;->val$v:Landroid/view/View;

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2, v0}, Lcom/narvii/app/NVActivity;->r(Lcom/narvii/app/NVActivity;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 12
    return-void
.end method

.class Lcom/narvii/app/NVActivity$13$1;
.super Ljava/lang/Object;
.source "NVActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/NVActivity$13;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/app/NVActivity$13;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVActivity$13;)V
    .locals 0

    .line 1894
    iput-object p1, p0, Lcom/narvii/app/NVActivity$13$1;->this$1:Lcom/narvii/app/NVActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1897
    iget-object v0, p0, Lcom/narvii/app/NVActivity$13$1;->this$1:Lcom/narvii/app/NVActivity$13;

    iget-object v1, v0, Lcom/narvii/app/NVActivity$13;->this$0:Lcom/narvii/app/NVActivity;

    iget-object v2, v0, Lcom/narvii/app/NVActivity$13;->val$parent:Landroid/view/ViewGroup;

    iget-object v0, v0, Lcom/narvii/app/NVActivity$13;->val$v:Landroid/view/View;

    invoke-static {v1, v2, v0}, Lcom/narvii/app/NVActivity;->access$500(Lcom/narvii/app/NVActivity;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

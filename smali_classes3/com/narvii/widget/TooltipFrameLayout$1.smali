.class Lcom/narvii/widget/TooltipFrameLayout$1;
.super Ljava/lang/Object;
.source "TooltipFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/TooltipFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/TooltipFrameLayout;


# direct methods
.method constructor <init>(Lcom/narvii/widget/TooltipFrameLayout;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/narvii/widget/TooltipFrameLayout$1;->this$0:Lcom/narvii/widget/TooltipFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/narvii/widget/TooltipFrameLayout$1;->this$0:Lcom/narvii/widget/TooltipFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

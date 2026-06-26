.class Lcom/narvii/master/SplashView$1;
.super Ljava/lang/Object;
.source "SplashView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/SplashView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/SplashView;


# direct methods
.method constructor <init>(Lcom/narvii/master/SplashView;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/narvii/master/SplashView$1;->this$0:Lcom/narvii/master/SplashView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/narvii/master/SplashView$1;->this$0:Lcom/narvii/master/SplashView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

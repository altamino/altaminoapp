.class Lcom/narvii/amino/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/amino/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/MainActivity;


# direct methods
.method constructor <init>(Lcom/narvii/amino/MainActivity;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/narvii/amino/MainActivity$2;->this$0:Lcom/narvii/amino/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/narvii/amino/MainActivity$2;->this$0:Lcom/narvii/amino/MainActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/narvii/amino/MainActivity;->blockInput:Z

    return-void
.end method

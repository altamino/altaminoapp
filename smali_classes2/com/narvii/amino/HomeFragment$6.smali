.class Lcom/narvii/amino/HomeFragment$6;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/amino/HomeFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/HomeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/amino/HomeFragment;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment$6;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$6;->this$0:Lcom/narvii/amino/HomeFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/amino/HomeFragment;->pageCreateComplete:Z

    return-void
.end method

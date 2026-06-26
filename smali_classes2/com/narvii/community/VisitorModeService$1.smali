.class Lcom/narvii/community/VisitorModeService$1;
.super Lcom/narvii/util/LruHashSet;
.source "VisitorModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/VisitorModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/LruHashSet<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/VisitorModeService;


# direct methods
.method constructor <init>(Lcom/narvii/community/VisitorModeService;I)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/narvii/community/VisitorModeService$1;->this$0:Lcom/narvii/community/VisitorModeService;

    invoke-direct {p0, p2}, Lcom/narvii/util/LruHashSet;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected onKeyEvicted(Ljava/lang/Object;)V
    .locals 1

    .line 31
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/narvii/community/VisitorModeService$1;->this$0:Lcom/narvii/community/VisitorModeService;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/narvii/community/VisitorModeService;->access$000(Lcom/narvii/community/VisitorModeService;I)V

    :cond_0
    return-void
.end method

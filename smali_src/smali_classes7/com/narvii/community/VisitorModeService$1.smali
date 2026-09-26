.class Lcom/narvii/community/VisitorModeService$1;
.super Lcom/narvii/util/LruHashSet;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/VisitorModeService$1;->this$0:Lcom/narvii/community/VisitorModeService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/LruHashSet;-><init>(I)V

    .line 6
    return-void
.end method


# virtual methods
.method protected onKeyEvicted(Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Ljava/lang/Integer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/community/VisitorModeService$1;->this$0:Lcom/narvii/community/VisitorModeService;

    .line 7
    .line 8
    check-cast p1, Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result p1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p1}, Lcom/narvii/community/VisitorModeService;->a(Lcom/narvii/community/VisitorModeService;I)V

    .line 16
    :cond_0
    return-void
.end method

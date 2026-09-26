.class Lcom/narvii/community/CBBHost$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/CBBHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/CBBHost;


# direct methods
.method constructor <init>(Lcom/narvii/community/CBBHost;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/CBBHost$2;->this$0:Lcom/narvii/community/CBBHost;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 0

    iget-object p1, p0, Lcom/narvii/community/CBBHost$2;->this$0:Lcom/narvii/community/CBBHost;

    .line 2
    invoke-static {p1}, Lcom/narvii/community/CBBHost;->e(Lcom/narvii/community/CBBHost;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/community/CBBHost$2;->call(Ljava/lang/Integer;)V

    return-void
.end method

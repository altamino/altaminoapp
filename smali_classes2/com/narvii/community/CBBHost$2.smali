.class Lcom/narvii/community/CBBHost$2;
.super Ljava/lang/Object;
.source "CBBHost.java"

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

    .line 102
    iput-object p1, p0, Lcom/narvii/community/CBBHost$2;->this$0:Lcom/narvii/community/CBBHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 0

    .line 105
    iget-object p1, p0, Lcom/narvii/community/CBBHost$2;->this$0:Lcom/narvii/community/CBBHost;

    invoke-static {p1}, Lcom/narvii/community/CBBHost;->access$100(Lcom/narvii/community/CBBHost;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 102
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/community/CBBHost$2;->call(Ljava/lang/Integer;)V

    return-void
.end method

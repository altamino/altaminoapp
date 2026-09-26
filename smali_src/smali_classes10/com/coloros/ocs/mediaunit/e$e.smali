.class Lcom/coloros/ocs/mediaunit/e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/ocs/base/common/api/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/ocs/mediaunit/e;->f()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coloros/ocs/base/common/api/g$a<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/ocs/mediaunit/e;


# direct methods
.method constructor <init>(Lcom/coloros/ocs/mediaunit/e;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/coloros/ocs/mediaunit/e$e;->this$0:Lcom/coloros/ocs/mediaunit/e;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Lg1/b;ILjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string p3, "errorCode -- "

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-string p2, "MediaUnitClientImpl"

    .line 20
    .line 21
    .line 22
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method

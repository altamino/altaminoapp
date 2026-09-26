.class Lcom/google/common/collect/c0$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# static fields
.field static final MAP_FIELD_SETTER:Lcom/google/common/collect/c1$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/c1$b<",
            "Lcom/google/common/collect/c0;",
            ">;"
        }
    .end annotation
.end field

.field static final SIZE_FIELD_SETTER:Lcom/google/common/collect/c1$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/c1$b<",
            "Lcom/google/common/collect/c0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "map"

    .line 3
    .line 4
    const-class v1, Lcom/google/common/collect/c0;

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v0}, Lcom/google/common/collect/c1;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/c1$b;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sput-object v0, Lcom/google/common/collect/c0$e;->MAP_FIELD_SETTER:Lcom/google/common/collect/c1$b;

    .line 11
    .line 12
    const-string v0, "size"

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v0}, Lcom/google/common/collect/c1;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/c1$b;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    sput-object v0, Lcom/google/common/collect/c0$e;->SIZE_FIELD_SETTER:Lcom/google/common/collect/c1$b;

    .line 19
    return-void
.end method

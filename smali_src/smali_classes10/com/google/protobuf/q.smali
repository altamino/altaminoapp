.class abstract Lcom/google/protobuf/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/q$c;,
        Lcom/google/protobuf/q$b;
    }
.end annotation


# static fields
.field private static final FULL_INSTANCE:Lcom/google/protobuf/q;

.field private static final LITE_INSTANCE:Lcom/google/protobuf/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/protobuf/q$b;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/google/protobuf/q$b;-><init>(Lcom/google/protobuf/q$a;)V

    .line 7
    .line 8
    sput-object v0, Lcom/google/protobuf/q;->FULL_INSTANCE:Lcom/google/protobuf/q;

    .line 9
    .line 10
    new-instance v0, Lcom/google/protobuf/q$c;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/google/protobuf/q$c;-><init>(Lcom/google/protobuf/q$a;)V

    .line 14
    .line 15
    sput-object v0, Lcom/google/protobuf/q;->LITE_INSTANCE:Lcom/google/protobuf/q;

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/q$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/q;-><init>()V

    return-void
.end method

.method static full()Lcom/google/protobuf/q;
    .locals 1

    sget-object v0, Lcom/google/protobuf/q;->FULL_INSTANCE:Lcom/google/protobuf/q;

    return-object v0
.end method

.method static lite()Lcom/google/protobuf/q;
    .locals 1

    sget-object v0, Lcom/google/protobuf/q;->LITE_INSTANCE:Lcom/google/protobuf/q;

    return-object v0
.end method


# virtual methods
.method abstract makeImmutableListAt(Ljava/lang/Object;J)V
.end method

.method abstract mergeListsAt(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method

.method abstract mutableListAt(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end method

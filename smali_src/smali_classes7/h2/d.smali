.class public final Lh2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh2/d$a;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lh2/d;


# instance fields
.field private final log_event_dropped_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh2/c;",
            ">;"
        }
    .end annotation
.end field

.field private final log_source_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lh2/d$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lh2/d$a;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lh2/d$a;->a()Lh2/d;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sput-object v0, Lh2/d;->DEFAULT_INSTANCE:Lh2/d;

    .line 12
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lh2/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lh2/d;->log_source_:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Lh2/d;->log_event_dropped_:Ljava/util/List;

    .line 8
    return-void
.end method

.method public static c()Lh2/d$a;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lh2/d$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lh2/d$a;-><init>()V

    .line 6
    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/d;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh2/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh2/d;->log_event_dropped_:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/d;
        tag = 0x1
    .end annotation

    .line 1
    iget-object v0, p0, Lh2/d;->log_source_:Ljava/lang/String;

    return-object v0
.end method

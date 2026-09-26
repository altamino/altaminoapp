.class Lcom/google/firebase/components/h0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll4/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/components/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final allowedPublishedEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final delegate:Ll4/c;


# direct methods
.method public constructor <init>(Ljava/util/Set;Ll4/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ll4/c;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/firebase/components/h0$a;->allowedPublishedEvents:Ljava/util/Set;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/firebase/components/h0$a;->delegate:Ll4/c;

    .line 8
    return-void
.end method

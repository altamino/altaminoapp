.class public interface abstract Lcom/google/firebase/components/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NOOP:Lcom/google/firebase/components/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/components/i;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/firebase/components/i;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/components/j;->NOOP:Lcom/google/firebase/components/j;

    .line 8
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/firebase/components/ComponentRegistrar;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/c<",
            "*>;>;"
        }
    .end annotation
.end method

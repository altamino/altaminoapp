.class public final Lcom/google/firebase/crashlytics/internal/metadata/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk4/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/metadata/a$a;
    }
.end annotation


# static fields
.field public static final CODEGEN_VERSION:I = 0x2

.field public static final CONFIG:Lk4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/crashlytics/internal/metadata/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/metadata/a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/crashlytics/internal/metadata/a;->CONFIG:Lk4/a;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(Lk4/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk4/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/crashlytics/internal/metadata/a$a;->INSTANCE:Lcom/google/firebase/crashlytics/internal/metadata/a$a;

    .line 3
    .line 4
    const-class v1, Lcom/google/firebase/crashlytics/internal/metadata/i;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v1, v0}, Lk4/b;->a(Ljava/lang/Class;Lj4/d;)Lk4/b;

    .line 8
    .line 9
    const-class v1, Lcom/google/firebase/crashlytics/internal/metadata/b;

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v1, v0}, Lk4/b;->a(Ljava/lang/Class;Lj4/d;)Lk4/b;

    .line 13
    return-void
.end method

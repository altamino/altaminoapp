.class public La4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/b;


# static fields
.field private static final instance:La4/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, La4/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, La4/b;-><init>()V

    .line 6
    .line 7
    sput-object v0, La4/b;->instance:La4/b;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static b()La4/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, La4/b;->instance:La4/b;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/firebase/f;)Lx3/a;
    .locals 1
    .param p1    # Lcom/google/firebase/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    const-class v0, Lcom/google/firebase/appcheck/playintegrity/internal/i;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/google/firebase/f;->j(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lx3/a;

    .line 9
    return-object p1
.end method

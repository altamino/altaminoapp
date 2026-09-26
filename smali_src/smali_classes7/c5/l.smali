.class public Lc5/l;
.super Lc5/i;
.source "SourceFile"


# instance fields
.field private final httpStatusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p2}, Lc5/i;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lc5/l;->httpStatusCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lc5/i$a;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p2, p3}, Lc5/i;-><init>(Ljava/lang/String;Lc5/i$a;)V

    iput p1, p0, Lc5/l;->httpStatusCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p2, p3}, Lc5/i;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Lc5/l;->httpStatusCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;Lc5/i$a;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lc5/i$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0, p2, p3, p4}, Lc5/i;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lc5/i$a;)V

    iput p1, p0, Lc5/l;->httpStatusCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lc5/i$a;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Lc5/i;-><init>(Ljava/lang/String;Lc5/i$a;)V

    const/4 p1, -0x1

    iput p1, p0, Lc5/l;->httpStatusCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lc5/i$a;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lc5/i$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lc5/i;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lc5/i$a;)V

    const/4 p1, -0x1

    iput p1, p0, Lc5/l;->httpStatusCode:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lc5/l;->httpStatusCode:I

    return v0
.end method

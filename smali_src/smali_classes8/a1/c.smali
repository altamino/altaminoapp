.class public abstract La1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La1/c$b;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La1/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, La1/c;-><init>()V

    return-void
.end method

.method public static a()La1/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, La1/c$b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, La1/c$b;-><init>()V

    .line 6
    return-object v0
.end method


# virtual methods
.method abstract b(Z)V
.end method

.method public abstract c()V
.end method

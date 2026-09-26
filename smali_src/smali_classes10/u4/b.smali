.class public Lu4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu4/b$b;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lu4/a;

.field private static volatile instance:Lu4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lu4/b$b;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lu4/b$b;-><init>(Lu4/b$a;)V

    .line 7
    .line 8
    sput-object v0, Lu4/b;->DEFAULT_INSTANCE:Lu4/a;

    .line 9
    .line 10
    sput-object v0, Lu4/b;->instance:Lu4/a;

    .line 11
    return-void
.end method

.method public static a()Lu4/a;
    .locals 1

    .line 1
    sget-object v0, Lu4/b;->instance:Lu4/a;

    return-object v0
.end method

.class public final enum Lcom/tokenautocomplete/TokenCompleteTextView$h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tokenautocomplete/TokenCompleteTextView$h;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tokenautocomplete/TokenCompleteTextView$h;

.field public static final enum Delete:Lcom/tokenautocomplete/TokenCompleteTextView$h;

.field public static final enum None:Lcom/tokenautocomplete/TokenCompleteTextView$h;

.field public static final enum Select:Lcom/tokenautocomplete/TokenCompleteTextView$h;

.field public static final enum SelectDeselect:Lcom/tokenautocomplete/TokenCompleteTextView$h;


# instance fields
.field private mIsSelectable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$h;

    .line 3
    .line 4
    const-string v1, "None"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v2}, Lcom/tokenautocomplete/TokenCompleteTextView$h;-><init>(Ljava/lang/String;IZ)V

    .line 9
    .line 10
    sput-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$h;->None:Lcom/tokenautocomplete/TokenCompleteTextView$h;

    .line 11
    .line 12
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$h;

    .line 13
    .line 14
    const-string v1, "Delete"

    .line 15
    const/4 v3, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v3, v2}, Lcom/tokenautocomplete/TokenCompleteTextView$h;-><init>(Ljava/lang/String;IZ)V

    .line 19
    .line 20
    sput-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$h;->Delete:Lcom/tokenautocomplete/TokenCompleteTextView$h;

    .line 21
    .line 22
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$h;

    .line 23
    .line 24
    const-string v1, "Select"

    .line 25
    const/4 v2, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2, v3}, Lcom/tokenautocomplete/TokenCompleteTextView$h;-><init>(Ljava/lang/String;IZ)V

    .line 29
    .line 30
    sput-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$h;->Select:Lcom/tokenautocomplete/TokenCompleteTextView$h;

    .line 31
    .line 32
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$h;

    .line 33
    .line 34
    const-string v1, "SelectDeselect"

    .line 35
    const/4 v2, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1, v2, v3}, Lcom/tokenautocomplete/TokenCompleteTextView$h;-><init>(Ljava/lang/String;IZ)V

    .line 39
    .line 40
    sput-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$h;->SelectDeselect:Lcom/tokenautocomplete/TokenCompleteTextView$h;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/tokenautocomplete/TokenCompleteTextView$h;->a()[Lcom/tokenautocomplete/TokenCompleteTextView$h;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    sput-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$h;->$VALUES:[Lcom/tokenautocomplete/TokenCompleteTextView$h;

    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/tokenautocomplete/TokenCompleteTextView$h;->mIsSelectable:Z

    .line 6
    return-void
.end method

.method private static synthetic a()[Lcom/tokenautocomplete/TokenCompleteTextView$h;
    .locals 3

    .line 1
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tokenautocomplete/TokenCompleteTextView$h;

    const/4 v1, 0x0

    sget-object v2, Lcom/tokenautocomplete/TokenCompleteTextView$h;->None:Lcom/tokenautocomplete/TokenCompleteTextView$h;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/tokenautocomplete/TokenCompleteTextView$h;->Delete:Lcom/tokenautocomplete/TokenCompleteTextView$h;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/tokenautocomplete/TokenCompleteTextView$h;->Select:Lcom/tokenautocomplete/TokenCompleteTextView$h;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/tokenautocomplete/TokenCompleteTextView$h;->SelectDeselect:Lcom/tokenautocomplete/TokenCompleteTextView$h;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tokenautocomplete/TokenCompleteTextView$h;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/tokenautocomplete/TokenCompleteTextView$h;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/tokenautocomplete/TokenCompleteTextView$h;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/tokenautocomplete/TokenCompleteTextView$h;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$h;->$VALUES:[Lcom/tokenautocomplete/TokenCompleteTextView$h;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/tokenautocomplete/TokenCompleteTextView$h;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/tokenautocomplete/TokenCompleteTextView$h;

    .line 9
    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$h;->mIsSelectable:Z

    return v0
.end method

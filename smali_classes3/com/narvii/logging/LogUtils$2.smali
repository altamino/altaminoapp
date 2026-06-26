.class synthetic Lcom/narvii/logging/LogUtils$2;
.super Ljava/lang/Object;
.source "LogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/logging/LogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 419
    invoke-static {}, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->values()[Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/narvii/logging/LogUtils$2;->$SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType:[I

    :try_start_0
    sget-object v0, Lcom/narvii/logging/LogUtils$2;->$SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType:[I

    sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->OBJECT:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

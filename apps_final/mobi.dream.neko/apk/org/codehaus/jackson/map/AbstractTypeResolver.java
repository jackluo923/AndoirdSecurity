package org.codehaus.jackson.map;

import org.codehaus.jackson.type.JavaType;

public abstract class AbstractTypeResolver
{
  public JavaType findTypeMapping(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType)
  {
    return null;
  }
  
  public JavaType resolveAbstractType(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType)
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.AbstractTypeResolver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
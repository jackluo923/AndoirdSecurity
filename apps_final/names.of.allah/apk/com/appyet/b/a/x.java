package com.appyet.b.a;

import android.sax.EndTextElementListener;
import com.appyet.data.Feed;

final class x
  implements EndTextElementListener
{
  x(w paramw) {}
  
  public final void end(String paramString)
  {
    if ((a.f.getTitle() == null) || (a.f.getTitle().trim().equals(""))) {
      a.f.setTitle(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.b.a.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */